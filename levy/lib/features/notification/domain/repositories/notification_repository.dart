import 'package:levy/features/notification/notification.dart';

abstract class NotificationRepository {
  Future<List<NotificationEntity>> get();
}
