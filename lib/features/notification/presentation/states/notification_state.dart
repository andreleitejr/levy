import 'package:equatable/equatable.dart';
import 'package:levy/features/notification/domain/entities/notification_entity.dart';

// TODO: INSERIR STATE DE ERRO
class NotificationState extends Equatable {
  final List<NotificationEntity> notifications;

  const NotificationState({
    required this.notifications,
  });

  const NotificationState.initial({
    this.notifications = const [],
  });

  @override
  List<Object> get props => [notifications];
}
