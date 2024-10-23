import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/bus/presentation/notifiers/bus_selection_notifier.dart';
import 'package:levy/features/bus/presentation/states/bus_selection_state.dart';

final busSelectionNotifierProvider = StateNotifierProvider<BusSelectionNotifier, BusSelectionState>((ref) {
  return BusSelectionNotifier();
});