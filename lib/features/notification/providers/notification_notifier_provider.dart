import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/notification/presentation/states/notification_state.dart';
import 'package:levy/features/notification/providers/notification_usecase_provider.dart';
import 'package:levy/features/notification/providers/notifiers/notification_notifier.dart';

final notificationNotifierProvider = StateNotifierProvider<NotificationNotifier, NotificationState>((ref) {
  return NotificationNotifier(ref.read(notificationUseCaseProvider));
});
