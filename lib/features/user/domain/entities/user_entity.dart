import 'package:levy/features/address/domain/entities/address_entity.dart';

abstract class UserEntity {
  const UserEntity();

  String get id;
  String get name;
  String get lastName;
  int get age;
  String get email;
  String get phoneNumber;
  String get birthday;
  String get image;
  AddressEntity get address;
}
