import 'package:levy/features/address/domain/entities/address_entity.dart';

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
}
