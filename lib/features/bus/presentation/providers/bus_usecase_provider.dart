import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/bus/bus.dart';

final busUseCaseProvider = Provider<GetBusUseCase>((ref) {
  return GetBusUseCaseImpl(ref.read(busRepositoryProvider));
});
