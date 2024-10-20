import 'package:levy/features/address/domain/entities/address_entity.dart';

abstract class SearchEntity {
  const SearchEntity();

  AddressEntity get homeAddress;
  AddressEntity get workAddress;
  String get departureTime;
  String get returnTime;
}
