import 'package:levy/features/notification/notification.dart';

abstract class GetNotificationUseCase {
  Future<List<NotificationEntity>> call();
}
