import 'package:equatable/equatable.dart';
import 'package:levy/features/notification/domain/entities/notification_entity.dart';

class NotificationState extends Equatable {
  final List<NotificationEntity> notifications;
  final String? errorMessage;

  const NotificationState({
    required this.notifications,
    this.errorMessage,
  });

  const NotificationState.initial()
      : notifications = const [],
        errorMessage = null;

  const NotificationState.error(String message)
      : notifications = const [],
        errorMessage = message;

  @override
  List<Object?> get props => [notifications, errorMessage];
}
