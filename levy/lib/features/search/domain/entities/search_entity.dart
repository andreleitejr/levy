import 'package:levy/features/address/address.dart';

abstract class SearchEntity {
  const SearchEntity();

  AddressEntity get departureAddress;
  AddressEntity get returnAddress;
  String get departureTime;
  String get returnTime;
}
