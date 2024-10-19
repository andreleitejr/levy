import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/bus/data/datasources/bus_datasource.dart';
import 'package:levy/features/bus/data/datasources/bus_datasource_mock.dart';

final busDataSourceProvider = Provider<BusDataSource>((ref) {
  return BusDataSourceMock();
});
