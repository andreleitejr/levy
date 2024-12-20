import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:levy/features/commons/widgets/state_builder.dart';

final class MapState implements GenericStateBase {
  final LatLng? userLocation;
  final LatLng busLocation;
  final LatLng originLocation;
  final LatLng destinationLocation;

  @override
  final String? errorMessage;

  @override
  final bool isLoading;

  const MapState({
    this.userLocation,
    this.busLocation = const LatLng(0, 0),
    this.originLocation = const LatLng(0, 0),
    this.destinationLocation = const LatLng(0, 0),
    this.errorMessage,
    this.isLoading = false,
  });

  const MapState.loading() : this();

  const MapState.success(
    LatLng userLocation,
    LatLng busLocation,
    LatLng originLocation,
    LatLng destinationLocation,
  ) : this(
          userLocation: userLocation,
          busLocation: busLocation,
          originLocation: originLocation,
          destinationLocation: destinationLocation,
        );

  const MapState.error(String message) : this(errorMessage: message);
}
