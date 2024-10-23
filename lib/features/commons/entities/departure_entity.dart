import 'package:levy/features/address/domain/entities/address_entity.dart';

abstract class DepartureEntity {
  const DepartureEntity();
  
  AddressEntity get address;
  String get time;
}
