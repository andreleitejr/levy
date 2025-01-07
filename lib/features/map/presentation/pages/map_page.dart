import 'dart:async';
import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:levy/core/router/app_router.gr.dart';
import 'package:levy/core/theme/theme_colors.dart';
import 'package:levy/core/theme/theme_icons.dart';
import 'package:levy/core/theme/theme_images.dart';
import 'package:levy/features/commons/widgets/state_builder.dart';
import 'package:levy/features/commons/widgets/theme_error_page.dart';
import 'package:levy/features/commons/widgets/theme_inactive_widget.dart';
import 'package:levy/features/commons/widgets/theme_loading_page.dart';
import 'package:levy/features/map/presentation/providers/map_notifier_provider.dart';
import 'package:levy/features/map/presentation/states/map_state.dart';
import 'package:levy/features/map/presentation/utils/map_translation.dart';
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
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await ref.read(mapNotifierProvider.notifier).init(
            isReturnBus: widget.isReturnBus,
          );
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
    if (state.isInactive) {
      return ThemeInactiveWidget(
        appBarTitle: MapTranslation.header.title,
        icon: ThemeIcons.map,
        title: MapTranslation.inactive.title,
        description: MapTranslation.inactive.description,
        buttonText: MapTranslation.inactive.buttonText,
        onButtonPressed: () {
          context.router.push(HomeRoute());
        },
      );
    }

    final userLocation = state.userLocation;

    if (userLocation != null) {
      return FutureBuilder<void>(
        future: _initMapElements(state),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return ThemeLoadingWidget();
          } else if (snapshot.hasError) {
            return ThemeErrorWidget(
              message: snapshot.error.toString(),
            );
          } else {
            return MapWidget(
              onPop: () => context.router.back(),
              targetLocation: userLocation,
              markers: markers,
              polylines: polylines,
            );
          }
        },
      );
    }

    return SizedBox.shrink();
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

  Future<void> _initMapElements(MapState state) async {
    await _initMarkers(state);
    await _addRoute(state);
  }

  Future<void> _initMarkers(MapState state) async {
    markers = {
      await _buildUserMarker(state.userLocation!, 'User'),
      await _buildStaticMarker(state.originLocation, 'Origin'),
      await _buildStaticMarker(state.destinationLocation, 'Destination'),
      await _buildBusMarker(state),
    };
  }

  Future<Marker> _buildUserMarker(LatLng location, String id) async {
    final userImage = ThemeImages.getImageByString(getIt<UserEntity>().image);

    final icon = await _buildMarkerFromImage(userImage);

    return Marker(
      markerId: MarkerId(id),
      position: location,
      icon: icon,
    );
  }

  Future<Marker> _buildStaticMarker(LatLng location, String id) async {
    final configuration = ImageConfiguration();

    final icon = await BitmapDescriptor.asset(
      configuration,
      ThemeImages.marker,
      width: 64,
      height: 64,
    );

    return Marker(
      markerId: MarkerId(id),
      position: location,
      icon: icon,
    );
  }

  Future<Marker> _buildBusMarker(MapState state) async {
    final busImage = widget.isReturnBus
        ? state.reservation?.returnBus?.image
        : state.reservation?.departureBus?.image;

    if (busImage == null) throw Exception("No bus image available");

    final image = ThemeImages.getImageByString(busImage);

    final icon = await _buildMarkerFromImage(image);

    return Marker(
      markerId: const MarkerId("Bus"),
      position: state.busLocation,
      icon: icon,
    );
  }

  Future<void> _addRoute(MapState state) async {
    final origin = state.originLocation;
    final destination = state.destinationLocation;

    final points = await _fetchRoutePoints(
      origin: origin,
      destination: destination,
    );

    polylines.add(
      Polyline(
        polylineId: const PolylineId("Route"),
        points: points,
        color: ThemeColors.secondary,
        width: 8,
      ),
    );
  }

  Future<List<LatLng>> _fetchRoutePoints({
    required LatLng origin,
    required LatLng destination,
  }) async {
    final response = await http.get(Uri.parse(
        "https://maps.googleapis.com/maps/api/directions/json?origin=${origin.latitude},${origin.longitude}&destination=${destination.latitude},${destination.longitude}&key=${dotenv.env["GOOGLE_MAPS_API_KEY"]}"));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return _decodePolyline(data['routes'][0]['overview_polyline']['points']);
    }

    throw Exception("Failed to fetch route");
  }

  List<LatLng> _decodePolyline(String encoded) {
    return [];
  }
}
