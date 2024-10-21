import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/address/data/repositories/address_repository_impl.dart';
import 'package:levy/features/address/domain/repositories/address_repository.dart';
import 'package:levy/features/address/presentation/providers/address_datasource_provider.dart';

final addressRepositoryProvider = Provider<AddressRepository>((ref) {
  return AddressRepositoryImpl(ref.read(addressDataSourceProvider));
});
