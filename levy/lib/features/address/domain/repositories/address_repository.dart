import 'package:levy/features/address/address.dart';

abstract class AddressRepository {
  Future<List<AddressEntity>> get();
}
