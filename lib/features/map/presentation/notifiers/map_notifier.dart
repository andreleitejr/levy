// Notifier que gerencia o estado da localização
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/map/presentation/states/map_state.dart';
import 'package:levy/main.dart';
import 'package:location/location.dart';

final class MapNotifier extends StateNotifier<MapState> {
  MapNotifier() : super(MapState.loading());

  Future<void> init({bool isReturn = false}) async {
    var location = Location();

    // final reservation = getIt<ReservationEntity>();
    final departureBus = getIt<BusEntity>(instanceName: 'departure');
    final returnBus = getIt<BusEntity>(instanceName: 'return');

    bool serviceEnabled = await location.serviceEnabled();

    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) return;
    }

    PermissionStatus permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) return;
    }

    LocationData locationData = await location.getLocation();

    LatLng newUserLocation =
        LatLng(locationData.latitude!, locationData.longitude!);

    final originLatitude = isReturn
        ? returnBus.routes.first.origin.latitude
        : departureBus.routes.first.origin.latitude;

    final originLongitude = isReturn
        ? returnBus.routes.first.origin.longitude
        : departureBus.routes.first.origin.longitude;

    final destinationLatitude = isReturn
        ? returnBus.routes.last.origin.latitude
        : departureBus.routes.last.origin.latitude;

    final destinationLongitude = isReturn
        ? returnBus.routes.last.origin.longitude
        : departureBus.routes.last.origin.longitude;

    final lastLocation =
        isReturn ? returnBus.lastLocation : departureBus.lastLocation;

    final originLocation = LatLng(originLatitude, originLongitude);
    final destinationLocation =
        LatLng(destinationLatitude, destinationLongitude);

    state = MapState.success(
      newUserLocation,
      lastLocation,
      originLocation,
      destinationLocation,
    );
  }
}
