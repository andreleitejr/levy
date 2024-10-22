import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/time/presentation/states/time_state.dart';

class TimeNotifier extends StateNotifier<TimeState> {
  TimeNotifier() : super(TimeState(hour: DateTime.now().hour, minute: 0));

  void selectHour(int hour) {
    state = TimeState(hour: hour, minute: state.minute);
  }

  void selectMinute(int minute) {
    state = TimeState(hour: state.hour, minute: minute);
  }
}