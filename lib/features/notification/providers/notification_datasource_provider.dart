import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/notification/data/datasources/notification_datasource.dart';
import 'package:levy/features/notification/data/datasources/notification_datasource_mock.dart';

final notificationDataSourceProvider = Provider<NotificationDataSource>((ref) {
  return NotificationDataSourceMock();
});
