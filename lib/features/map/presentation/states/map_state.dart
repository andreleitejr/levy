import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:levy/features/commons/widgets/state_builder.dart';
import 'package:levy/features/reservation/data/models/reservation_model.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';

final class MapState implements GenericStateBase {
  final ReservationEntity? reservation;
  final LatLng userLocation;
  final LatLng busLocation;
  final LatLng originLocation;
  final LatLng destinationLocation;
  final bool isInactive;

  @override
  final String? errorMessage;

  @override
  final bool isLoading;

  const MapState({
    this.reservation = const ReservationModel(),
    this.userLocation = const LatLng(0, 0),
    this.busLocation = const LatLng(0, 0),
    this.originLocation = const LatLng(0, 0),
    this.destinationLocation = const LatLng(0, 0),
    this.errorMessage,
    this.isLoading = false,
    this.isInactive = true,
  });

  const MapState.loading() : this(isLoading: true);

  const MapState.inactive() : this(isInactive: true);

  const MapState.success({
    required ReservationEntity reservation,
    required LatLng userLocation,
    required LatLng busLocation,
    required LatLng originLocation,
    required LatLng destinationLocation,
  }) : this(
          reservation: reservation,
          userLocation: userLocation,
          busLocation: busLocation,
          originLocation: originLocation,
          destinationLocation: destinationLocation,
          isInactive: false,
        );

  const MapState.error(String message) : this(errorMessage: message);
}
