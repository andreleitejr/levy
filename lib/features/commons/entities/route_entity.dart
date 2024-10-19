
import 'package:levy/features/address/domain/entities/address_entity.dart';

abstract class RouteEntity {
  const RouteEntity();

  String get id;
  String get name;
  AddressEntity get origin;
  AddressEntity get destination;
  List<AddressEntity> get stops;
  double get distance;
  String get duration;
  String get departureTime;
  String get arrivalTime;
  bool get isActive;
}
