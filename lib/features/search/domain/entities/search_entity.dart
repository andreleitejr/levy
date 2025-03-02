import 'package:levy_shared_entities/entities.dart';

abstract class SearchEntity {
  const SearchEntity();

  AddressEntity get departureAddress;
  AddressEntity get returnAddress;
  String get departureTime;
  String get returnTime;
}
