import 'package:equatable/equatable.dart';
import 'package:levy/features/commons/widgets/state_builder.dart';
import 'package:levy/features/notification/domain/entities/notification_entity.dart';

final class NotificationState extends Equatable implements GenericStateBase {
  final List<NotificationEntity>? data;
  @override
  final String? errorMessage;
  @override
  final bool isLoading;

  const NotificationState({
    this.data,
    this.errorMessage,
    this.isLoading = false,
  });

  const NotificationState.loading()
      : data = null,
        errorMessage = null,
        isLoading = true;

  const NotificationState.success(List<NotificationEntity> value)
      : data = value,
        errorMessage = null,
        isLoading = false;

  const NotificationState.error(String message)
      : data = null,
        errorMessage = message,
        isLoading = false;

  @override
  List<Object?> get props => [data, errorMessage, isLoading];
}