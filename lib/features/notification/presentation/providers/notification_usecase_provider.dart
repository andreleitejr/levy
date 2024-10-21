import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/notification/domain/usecases/get_notification_usecase.dart';
import 'package:levy/features/notification/domain/usecases/get_notification_usecase_impl.dart';
import 'package:levy/features/notification/presentation/providers/notification_repository_provider.dart';

final notificationUseCaseProvider = Provider<GetNotificationUseCase>((ref) {
  return GetNotificationUseCaseImpl(ref.read(notificationRepositoryProvider));
});
