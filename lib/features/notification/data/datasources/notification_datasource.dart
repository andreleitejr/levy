import 'package:levy/features/notification/data/models/notification_model.dart';

abstract class NotificationDataSource {
  Future<List<NotificationModel>> get();
}
