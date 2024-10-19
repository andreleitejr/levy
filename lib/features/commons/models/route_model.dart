import 'package:json_annotation/json_annotation.dart';
import 'package:levy/features/address/data/models/address_model.dart';
import 'package:levy/features/commons/entities/route_entity.dart';

part 'route_model.g.dart';

@JsonSerializable(createToJson: false)
final class RouteModel extends RouteEntity {
  const RouteModel({
    this.id = '',
    this.name = '',
    this.origin = const AddressModel(),
    this.destination = const AddressModel(),
    this.stops = const <AddressModel>[],
    this.distance = 0,
    this.duration = '',
    this.departureTime = '',
    this.arrivalTime = '',
    this.isActive = true,
  });

  @override
  final String id;
  @override
  final String name;
  @override
  final AddressModel origin;
  @override
  final AddressModel destination;
  @override
  final List<AddressModel> stops;
  @override
  final double distance;
  @override
  final String duration;
  @override
  final String departureTime;
  @override
  final String arrivalTime;
  @override
  final bool isActive;

  factory RouteModel.fromJson(Map<String, dynamic> data) => _$RouteModelFromJson(data);
}
