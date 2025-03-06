import 'package:levy/core/theme/theme.dart';
import 'package:levy/features/notification/domain/entities/notification_entity.dart';

final class NotificationState implements GenericStateBase {
  final List<NotificationEntity> data;

  @override
  final String errorMessage;

  @override
  final bool isLoading;

  const NotificationState({
    this.data = const [],
    this.errorMessage = '',
    this.isLoading = false,
  });

  const NotificationState.loading() : this(isLoading: true);
  const NotificationState.success(List<NotificationEntity> data) : this(data: data);
  const NotificationState.error(String message) : this(errorMessage: message);
}
