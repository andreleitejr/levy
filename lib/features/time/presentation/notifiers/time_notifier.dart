import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/time/presentation/states/time_state.dart';

final class TimeNotifier extends StateNotifier<TimeState> {
  TimeNotifier() : super(TimeState.loading());

  Future<void> init() async {
    try {
      await Future.delayed(const Duration(milliseconds: 500));

      final now = DateTime.now();
      final hour = now.hour;
      int minute = now.minute;

      if (minute % 5 != 0) {
        minute = ((minute ~/ 5) + 1) * 5;
      }

      if (minute == 60) {
        minute = 0;
      }

      state = TimeState.success(hour, minute);
    } catch (e) {
      state = TimeState.error('Failed to load time: ${e.toString()}');
    }
  }

  void updateHour(int hour) {
    state = state.copyWith(hour: hour);
  }

  void updateMinute(int minute) {
    state = state.copyWith(minute: minute);
  }
}