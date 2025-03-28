import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/notification/presentation/notifiers/notification_notifier.dart';
import 'package:levy/features/notification/presentation/providers/notification_usecase_provider.dart';
import 'package:levy/features/notification/presentation/states/notification_state.dart';

final notificationNotifierProvider = StateNotifierProvider<NotificationNotifier, NotificationState>((ref) {
  return NotificationNotifier(ref.read(notificationUseCaseProvider));
});
