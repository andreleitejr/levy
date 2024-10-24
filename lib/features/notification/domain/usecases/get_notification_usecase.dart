import 'package:levy/features/notification/domain/entities/notification_entity.dart';

abstract class GetNotificationUseCase {
  Future<List<NotificationEntity>> call();
}
