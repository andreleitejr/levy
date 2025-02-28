import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/notification/notification.dart';

final notificationDataSourceProvider = Provider<NotificationDataSource>((ref) {
  return NotificationDataSourceMock();
});
