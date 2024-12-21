import 'dart:async';
import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:levy/core/theme/theme_colors.dart';
import 'package:levy/core/theme/theme_images.dart';
import 'package:levy/features/commons/widgets/state_builder.dart';
import 'package:levy/features/commons/widgets/theme_error_page.dart';
import 'package:levy/features/commons/widgets/theme_loading_page.dart';
import 'package:levy/features/map/presentation/providers/map_notifier_provider.dart';
import 'package:levy/features/map/presentation/states/map_state.dart';
import 'package:levy/features/map/presentation/widgets/map_widget.dart';
import 'package:levy/features/user/domain/entities/user_entity.dart';
import 'package:levy/main.dart';
import 'package:widget_to_marker/widget_to_marker.dart';

@RoutePage()
final class MapPage extends ConsumerStatefulWidget {
  const MapPage({
    super.key,
    this.isReturnBus = false,
  });

  final bool isReturnBus;

  @override
  ConsumerState<MapPage> createState() => _MapPageState();
}

final class _MapPageState extends ConsumerState<MapPage> {
  Set<Marker> markers = {};
  Set<Polyline> polylines = {};

  @override
  void initState() {
    super.initState();

    markers = {};

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      ref.read(mapNotifierProvider.notifier).init();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(mapNotifierProvider);

    return StateBuilder(
      state: state,
      loading: ThemeLoadingWidget(),
      success: _buildMapWidget(state),
      error: ThemeErrorWidget(
        message: state.errorMessage,
      ),
    );
  }

  Widget _buildMapWidget(MapState state) {
    final location = state.userLocation;

    if (location != null) {
      return FutureBuilder<void>(
        future: _initMapElements(state),
        builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return ThemeLoadingWidget();
          } else if (snapshot.hasError) {
            return ThemeErrorWidget(
              message: snapshot.error.toString(),
            );
          } else {
            return MapWidget(
              onPop: () => context.router.back(),
              targetLocation: location,
              markers: markers,
              polylines: polylines,
            );
          }
        },
      );
    }

    return SizedBox.shrink();
  }

  Future<void> _initMapElements(MapState state) async {
    await _initMarkers(state);
    await _addRoute(state);
  }

  Future<void> _addRoute(MapState state) async {
    final origin = state.originLocation;
    final destination = state.destinationLocation;

    final directions = await _fetchRoutePoints(origin, destination);

    polylines.add(
      Polyline(
        polylineId: const PolylineId('Route'),
        points: directions,
        color: ThemeColors.secondary,
        width: 8,
      ),
    );
  }

  Future<List<LatLng>> _fetchRoutePoints(
    LatLng origin,
    LatLng destination,
  ) async {
    final apiKey = dotenv.env['GOOGLE_MAPS_API_KEY'];

    final url = Uri.parse(
      'https://maps.googleapis.com/maps/api/directions/json?origin=${origin.latitude},${origin.longitude}&destination=${destination.latitude},${destination.longitude}&key=$apiKey',
    );

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      final points = data['routes'][0]['overview_polyline']['points'];

      return _decodePolyline(points);
    } else {
      throw Exception('Failed to fetch route');
    }
  }

  List<LatLng> _decodePolyline(String encoded) {
    final points = <LatLng>[];
    int index = 0, len = encoded.length;
    int lat = 0, lng = 0;

    while (index < len) {
      int b, shift = 0, result = 0;
      do {
        b = encoded.codeUnitAt(index++) - 63;
        result |= (b & 0x1f) << shift;
        shift += 5;
      } while (b >= 0x20);
      final dlat = ((result & 1) != 0 ? ~(result >> 1) : (result >> 1));
      lat += dlat;

      shift = 0;
      result = 0;
      do {
        b = encoded.codeUnitAt(index++) - 63;
        result |= (b & 0x1f) << shift;
        shift += 5;
      } while (b >= 0x20);
      final dlng = ((result & 1) != 0 ? ~(result >> 1) : (result >> 1));
      lng += dlng;

      points.add(LatLng(lat / 1E5, lng / 1E5));
    }

    return points;
  }

  Future<void> _initMarkers(MapState state) async {
    await _addUserMarker(state);
    await _addStaticMarkers(state);
    await _addDriverMarker(state);
  }

  Future<void> _addUserMarker(MapState state) async {
    final userLocation = state.userLocation;

    if (userLocation == null) return;

    final userImage = getIt<UserEntity>().image;

    final userIcon = await _buildMarkerFromImage(
      ThemeImages.getImageByString(userImage),
    );

    markers.add(
      Marker(
        markerId: const MarkerId("User"),
        position: userLocation,
        icon: userIcon,
      ),
    );
  }

  Future<void> _addStaticMarkers(MapState state) async {
    final configuration = ImageConfiguration();

    final originIcon = await BitmapDescriptor.asset(
      configuration,
      ThemeImages.marker,
      width: 64,
      height: 64,
    );

    markers.add(
      Marker(
        markerId: const MarkerId("Origin"),
        position: state.originLocation,
        icon: originIcon,
      ),
    );

    final destinationIcon = await BitmapDescriptor.asset(
      configuration,
      ThemeImages.marker,
      width: 64,
      height: 64,
    );

    markers.add(
      Marker(
        markerId: const MarkerId("Destination"),
        position: state.destinationLocation,
        icon: destinationIcon,
      ),
    );
  }

  Future<void> _addDriverMarker(MapState state) async {
    final driverImage = widget.isReturnBus
        ? state.reservation.departureBus?.image
        : state.reservation.returnBus?.image;

    if (driverImage == null) return;

    final driverIcon = await _buildMarkerFromImage(
      ThemeImages.getImageByString(driverImage),
    );

    markers.add(
      Marker(
        markerId: const MarkerId("Bus"),
        position: state.busLocation,
        icon: driverIcon,
      ),
    );
  }

  Future<BitmapDescriptor> _buildMarkerFromImage(String image) {
    return Container(
      height: 64,
      width: 64,
      decoration: BoxDecoration(
        border: Border.all(
          color: ThemeColors.secondary.withOpacity(0.35),
          width: 8,
        ),
        shape: BoxShape.circle,
      ),
      child: ClipOval(
        child: Image(
          image: AssetImage(
            image,
          ),
          height: 64,
          width: 64,
          fit: BoxFit.cover,
        ),
      ),
    ).toBitmapDescriptor();
  }
}
