import 'package:levy/features/bus/domain/entities/seat_entity.dart';
import 'package:levy/features/commons/entities/route_entity.dart';
import 'package:levy/features/driver/domain/entities/driver_entity.dart';

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
