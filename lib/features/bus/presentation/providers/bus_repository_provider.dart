import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/bus/data/repositories/bus_repository_impl.dart';
import 'package:levy/features/bus/domain/repositories/bus_repository.dart';
import 'package:levy/features/bus/presentation/providers/bus_datasource_provider.dart';

final busRepositoryProvider = Provider<BusRepository>((ref) {
  return BusRepositoryImpl(ref.read(busDataSourceProvider));
});
