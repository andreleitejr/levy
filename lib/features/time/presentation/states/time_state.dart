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

  const TimeState.loading() : this(isLoading: true);
  const TimeState.success() : this();
  const TimeState.error(String message) : this(errorMessage: message);

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
