import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:levy/features/map/map.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';
import 'package:levy/main.dart';
import 'package:location/location.dart';

final class MapNotifier extends StateNotifier<MapState> {
  MapNotifier() : super(MapState.loading());

  Future<void> init({bool isReturnBus = false}) async {
    try {
      await _ensureLocationPermissions();

      final reservation = _getReservation();

      if (reservation == null) {
        state = MapState.inactive();

        return;
      }

      final locationData = await Location().getLocation();
      final latitude = locationData.latitude;
      final longitude = locationData.longitude;

      if (latitude != null && longitude != null) {
        final userLocation = LatLng(latitude, longitude);

        state = _buildMapState(
          isReturnBus: isReturnBus,
          reservation: reservation,
          userLocation: userLocation,
        );
      } else {
        state = MapState.error('Failed to load Map Page: Coordinates are null');
      }
    } catch (e) {
      state = MapState.error('Failed to load Map Page: ${e.toString()}');
    }
  }

  Future<void> _ensureLocationPermissions() async {
    final location = Location();

    if (!await location.serviceEnabled()) {
      if (!await location.requestService()) {
        throw Exception('Location service is disabled');
      }
    }

    if (await location.hasPermission() == PermissionStatus.denied) {
      if (await location.requestPermission() != PermissionStatus.granted) {
        throw Exception('Location permission denied');
      }
    }
  }

  ReservationEntity? _getReservation() {
    return getIt.isRegistered<ReservationEntity>()
        ? getIt<ReservationEntity>()
        : null;
  }

  MapState _buildMapState({
    required bool isReturnBus,
    required ReservationEntity reservation,
    required LatLng userLocation,
  }) {
    final bus = isReturnBus ? reservation.returnBus : reservation.departureBus;

    if (bus == null) {
      throw Exception('Reservation does not have a bus');
    }

    final originLocation = bus.routes.first.origin;
    final destinationLocation = bus.routes.last.origin;

    return MapState.success(
      reservation: reservation,
      userLocation: userLocation,
      busLocation: bus.lastLocation,
      originLocation: LatLng(
        originLocation.latitude,
        originLocation.longitude,
      ),
      destinationLocation: LatLng(
        destinationLocation.latitude,
        destinationLocation.longitude,
      ),
    );
  }
}
