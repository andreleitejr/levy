import 'package:levy/features/address/domain/entities/address_entity.dart';

abstract class AddressRepository {
  Future<List<AddressEntity>> get();
}
