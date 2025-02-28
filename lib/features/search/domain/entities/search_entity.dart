import 'package:levy_address/address.dart';

abstract class SearchEntity {
  const SearchEntity();

  AddressEntity get departureAddress;
  AddressEntity get returnAddress;
  String get departureTime;
  String get returnTime;
}
