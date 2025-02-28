import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/address/address.dart';

final addressRepositoryProvider = Provider<AddressRepository>((ref) {
  return AddressRepositoryImpl(ref.read(addressDataSourceProvider));
});
