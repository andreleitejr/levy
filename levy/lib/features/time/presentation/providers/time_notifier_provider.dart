import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/time/presentation/notifiers/time_notifier.dart';
import 'package:levy/features/time/presentation/states/time_state.dart';

final timeNotifierProvider = StateNotifierProvider<TimeNotifier, TimeState>((ref) {
  return TimeNotifier();
});
