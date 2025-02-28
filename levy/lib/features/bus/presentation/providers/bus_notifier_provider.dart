import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/bus/bus.dart';

final busNotifierProvider = StateNotifierProvider<BusNotifier, BusStateImpl>((ref) {
  return BusNotifier(ref.read(busUseCaseProvider));
});
