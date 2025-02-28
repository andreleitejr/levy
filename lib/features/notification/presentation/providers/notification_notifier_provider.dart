import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/notification/notification.dart';

final notificationNotifierProvider = StateNotifierProvider<NotificationNotifier, NotificationState>((ref) {
  return NotificationNotifier(ref.read(notificationUseCaseProvider));
});
