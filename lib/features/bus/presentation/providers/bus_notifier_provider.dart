import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/bus/presentation/notifiers/bus_notifier.dart';
import 'package:levy/features/bus/presentation/providers/bus_usecase_provider.dart';
import 'package:levy/features/bus/presentation/states/bus_state_impl.dart';

final busNotifierProvider = StateNotifierProvider<BusNotifier, BusStateImpl>((ref) {
  return BusNotifier(ref.read(busUseCaseProvider));
});
