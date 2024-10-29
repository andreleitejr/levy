import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/time/presentation/states/time_state.dart';

final class TimeNotifier extends StateNotifier<TimeState> {
  TimeNotifier() : super(TimeState.loading());

  Future<void> init() async {
    try {
      await Future.delayed(const Duration(milliseconds: 500));

      state = TimeState.success();
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
