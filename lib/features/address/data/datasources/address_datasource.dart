import 'package:levy/features/address/data/models/address_model.dart';

abstract class AddressDataSource {
  Future<List<AddressModel>> get();
}
