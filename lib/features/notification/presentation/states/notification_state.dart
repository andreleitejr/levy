import 'package:levy/features/commons/widgets/state_builder.dart';
import 'package:levy/features/notification/domain/entities/notification_entity.dart';

final class NotificationState implements GenericStateBase {
  final List<NotificationEntity> data;

  @override
  final String? errorMessage;

  @override
  final bool isLoading;

  const NotificationState({
    this.data = const [],
    this.errorMessage,
    this.isLoading = false,
  });

  const NotificationState.loading()
      : data = const [],
        errorMessage = null,
        isLoading = true;

  const NotificationState.success(List<NotificationEntity> value)
      : data = value,
        errorMessage = null,
        isLoading = false;

  const NotificationState.error(String message)
      : data = const [],
        errorMessage = message,
        isLoading = false;
}