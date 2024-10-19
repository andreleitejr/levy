import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/notification/data/repositories/notification_repository_impl.dart';
import 'package:levy/features/notification/domain/repositories/notification_repository.dart';
import 'package:levy/features/notification/providers/notification_datasource_provider.dart';

final notificationRepositoryProvider = Provider<NotificationRepository>((ref) {
  return NotificationRepositoryImpl(ref.read(notificationDataSourceProvider));
});
