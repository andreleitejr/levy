import 'package:levy/apps_provisory/bus/domain/entities/seat_entity.dart';
import 'package:levy/apps_provisory/driver/domain/entities/driver_entity.dart';
import 'package:levy/apps_provisory/route/domain/entities/route_entity.dart';

abstract class BusEntity {
  const BusEntity();

  String get id;
  String get image;
  String get brand;
  String get model;
  String get year;
  String get color;
  int get capacity;
  List<String> get amenities;
  String get licensePlate;
  String get chassisNumber;
  bool get isAccessible;
  DriverEntity get driver;
  List<RouteEntity> get routes;
  List<SeatEntity> get seats;
}
