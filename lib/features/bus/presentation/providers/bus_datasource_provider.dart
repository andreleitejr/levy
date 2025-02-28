import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/bus/bus.dart';

final busDataSourceProvider = Provider<BusDataSource>((ref) {
  return BusDataSourceMock();
});
