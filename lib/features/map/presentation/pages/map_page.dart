import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
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
    this.isTargetBus = false,
  });

  final bool isReturnBus;
  final bool isTargetBus;

  @override
  ConsumerState<MapPage> createState() => _MapPageState();
}

final class _MapPageState extends ConsumerState<MapPage> {
  Set<Marker> markers = {};

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

    final targetLocation = widget.isTargetBus ? state.busLocation : state.userLocation;
    final zoom = widget.isTargetBus ? 19 : 16;

    return FutureBuilder<void>(
      future: _initMarkers(state),
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
            targetLocation: targetLocation,
            markers: markers,
            zoom: zoom.toDouble(),
            showLeading: widget.isTargetBus,
          );
        }
      },
    );
  }

  Future<void> _initMarkers(MapState state) async {
    final userLocation = state.userLocation;

    markers = {
      await _buildUserMarker(userLocation),
      await _buildStaticMarker(state.originLocation, 'Origin'),
      await _buildStaticMarker(state.destinationLocation, 'Destination'),
      await _buildBusMarker(state),
    };
  }

  Future<Marker> _buildMarker({
    required LatLng location,
    required String markerId,
    required String image,
  }) async {
    final icon = await _buildMarkerFromImage(image);

    return Marker(
      markerId: MarkerId(markerId),
      position: location,
      icon: icon,
    );
  }

  Future<Marker> _buildUserMarker(LatLng location) async {
    final userImage = ThemeImages.getImageByString(getIt<UserEntity>().image);

    return _buildMarker(
      location: location,
      markerId: 'User',
      image: userImage,
    );
  }

  Future<Marker> _buildStaticMarker(LatLng location, String id) async {
    return _buildMarker(
      location: location,
      markerId: id,
      image: ThemeImages.marker,
    );
  }

  Future<Marker> _buildBusMarker(MapState state) async {
    final busImage = widget.isReturnBus
        ? state.reservation?.returnBus?.image
        : state.reservation?.departureBus?.image;

    if (busImage == null) throw Exception("No bus image available");

    final image = ThemeImages.getImageByString(busImage);

    return _buildMarker(
      location: state.busLocation,
      markerId: 'Bus',
      image: image,
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
