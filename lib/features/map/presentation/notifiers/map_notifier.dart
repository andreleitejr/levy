import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/map/presentation/states/map_state.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';
import 'package:levy/main.dart';
import 'package:location/location.dart';

final class MapNotifier extends StateNotifier<MapState> {
  MapNotifier() : super(MapState.loading());

  Future<void> init({bool isReturnBus = false}) async {
    try {
      await _ensureLocationPermissions();

      final reservation = _getReservationEntity();
      final departureBus = _getBusEntity(instanceName: 'departure');
      final returnBus = _getBusEntity(instanceName: 'return');

      if (reservation == null || departureBus == null || returnBus == null) {
        state = MapState.inactive();
        return;
      }

      final locationData = await Location().getLocation();
      final userLocation =
          LatLng(locationData.latitude!, locationData.longitude!);

      state = _buildMapState(
        isReturnBus: isReturnBus,
        reservation: reservation,
        userLocation: userLocation,
        departureBus: departureBus,
        returnBus: returnBus,
      );
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

  ReservationEntity? _getReservationEntity() {
    return getIt.isRegistered<ReservationEntity>()
        ? getIt<ReservationEntity>()
        : null;
  }

  BusEntity? _getBusEntity({required String instanceName}) {
    return getIt.isRegistered<BusEntity>(instanceName: instanceName)
        ? getIt<BusEntity>(instanceName: instanceName)
        : null;
  }

  MapState _buildMapState({
    required bool isReturnBus,
    required ReservationEntity reservation,
    required LatLng userLocation,
    required BusEntity departureBus,
    required BusEntity returnBus,
  }) {
    final bus = isReturnBus ? returnBus : departureBus;

    return MapState.success(
      reservation: reservation,
      userLocation: userLocation,
      busLocation: bus.lastLocation,
      originLocation: LatLng(bus.routes.first.origin.latitude, bus.routes.first.origin.longitude),
      destinationLocation: LatLng(bus.routes.last.origin.latitude, bus.routes.last.origin.longitude),
    );
  }
}
