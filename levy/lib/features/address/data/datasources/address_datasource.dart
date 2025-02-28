import 'package:levy/features/address/address.dart';

abstract class AddressDataSource {
  Future<List<AddressModel>> get();
}
