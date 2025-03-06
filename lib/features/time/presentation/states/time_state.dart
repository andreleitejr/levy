

import 'package:levy_theme/core/theme/theme.dart';

final class TimeState implements GenericStateBase {
  final int hour;
  final int minute;

  @override
  final String errorMessage;

  @override
  final bool isLoading;

  const TimeState({
    required this.hour,
    required this.minute,
    this.errorMessage = '',
    this.isLoading = false,
  });

  const TimeState.loading() : this(hour: 0, minute: 0, isLoading: true);
  const TimeState.success(int hour, int minute) : this(hour: hour, minute: minute);
  const TimeState.error(String message) : this(hour: 0, minute: 0, errorMessage: message);

  TimeState copyWith({
    int? hour,
    int? minute,
    String? errorMessage,
    bool? isLoading,
  }) {
    return TimeState(
      hour: hour ?? this.hour,
      minute: minute ?? this.minute,
      errorMessage: errorMessage ?? this.errorMessage,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
