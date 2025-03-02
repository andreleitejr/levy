import 'package:levy_core/core.dart';
import 'package:levy_shared_entities/entities.dart';

abstract class DriverEntity {
  const DriverEntity();

  String get id;
  String get image;
  String get name;
  String get birthday;
  String get licenseNumber;
  String get licenseType;
  int get experienceYears;
  AddressEntity get address;
  String get nationality;

  String get description => '${birthday.age}, ${address.city}, ${address.state}';
}
