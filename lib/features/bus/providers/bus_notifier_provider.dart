import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/bus/presentation/states/bus_state.dart';
import 'package:levy/features/bus/providers/bus_usecase_provider.dart';
import 'package:levy/features/bus/providers/notifiers/notifiers.dart';

final busNotifierProvider = StateNotifierProvider<BusNotifier, BusState>((ref) {
  return BusNotifier(ref.read(busUseCaseProvider));
});
