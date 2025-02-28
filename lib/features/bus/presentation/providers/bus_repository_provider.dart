import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/bus/bus.dart';

final busRepositoryProvider = Provider<BusRepository>((ref) {
  return BusRepositoryImpl(ref.read(busDataSourceProvider));
});
