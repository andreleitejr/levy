import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/address/data/datasources/address_datasource.dart';
import 'package:levy/features/address/data/datasources/address_datasource_mock.dart';

final addressDataSourceProvider = Provider<AddressDataSource>((ref) {
  return AddressDataSourceMock();
});
