import 'package:levy/features/commons/widgets/state_builder.dart';

final class TimeState implements GenericStateBase {
  final int? hour;
  final int? minute;

  @override
  final String? errorMessage;

  @override
  final bool isLoading;

  const TimeState({
    this.hour,
    this.minute,
    this.errorMessage,
    this.isLoading = false,
  });

  const TimeState.loading()
      : hour = null,
        minute = null,
        errorMessage = null,
        isLoading = true;

  const TimeState.success()
      : hour = null,
        minute = null,
        errorMessage = null,
        isLoading = false;

  const TimeState.error(String message)
      : hour = null,
        minute = null,
        errorMessage = message,
        isLoading = false;

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
