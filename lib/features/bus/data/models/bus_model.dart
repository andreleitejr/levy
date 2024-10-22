import 'package:json_annotation/json_annotation.dart';
import 'package:levy/features/seat/data/models/seat_model.dart';
import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/commons/models/route_model.dart';
import 'package:levy/features/driver/data/models/driver_model.dart';

part 'bus_model.g.dart';

@JsonSerializable(createToJson: false)
final class BusModel extends BusEntity {
  const BusModel({
    this.id = '',
    this.image = '',
    this.brand = '',
    this.model = '',
    this.year = '',
    this.color = '',
    this.capacity = 32,
    this.amenities = const [],
    this.licensePlate = '',
    this.chassisNumber = '',
    this.isAccessible = true,
    this.driver = const DriverModel(),
    this.routes = const <RouteModel>[],
    this.seats = const <SeatModel>[],
  });

  @override
  final String id;
  @override
  final String image;
  @override
  final String brand;
  @override
  final String model;
  @override
  final String year;
  @override
  final String color;
  @override
  final int capacity;
  @override
  final List<String> amenities;
  @override
  final String licensePlate;
  @override
  final String chassisNumber;
  @override
  final bool isAccessible;
  @override
  final DriverModel driver;
  @override
  final List<RouteModel> routes;
  @override
  final List<SeatModel> seats;

  factory BusModel.fromJson(Map<String, dynamic> data) => _$BusModelFromJson(data);
}