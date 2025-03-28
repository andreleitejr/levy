import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:levy/features/commons/entities/amenity_entity.dart';
import 'package:levy/features/driver/domain/entities/driver_entity.dart';
import 'package:levy/features/route/domain/entities/route_entity.dart';
import 'package:levy/features/seat/domain/entities/seat_entity.dart';

abstract class BusEntity {
  const BusEntity();

  String get id;
  String get image;
  String get brand;
  String get model;
  String get year;
  String get color;
  int get capacity;
  List<AmenityEntity> get amenities;
  String get licensePlate;
  String get chassisNumber;
  bool get isAccessible;
  DriverEntity get driver;
  List<RouteEntity> get routes;
  List<SeatEntity> get seats;
  LatLng get lastLocation;
}
