import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/bus/domain/usecases/get_bus_usecase.dart';
import 'package:levy/features/bus/domain/usecases/get_bus_usecase_impl.dart';
import 'package:levy/features/bus/presentation/providers/bus_repository_provider.dart';

final busUseCaseProvider = Provider<GetBusUseCase>((ref) {
  return GetBusUseCaseImpl(ref.read(busRepositoryProvider));
});
