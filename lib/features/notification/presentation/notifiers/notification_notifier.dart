import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/notification/domain/usecases/get_notification_usecase.dart';
import 'package:levy/features/notification/presentation/states/notification_state.dart';

final class NotificationNotifier extends StateNotifier<NotificationState> {
  final GetNotificationUseCase _usecase;

  NotificationNotifier(this._usecase) : super(NotificationState.loading());

  Future<void> init() async {
    try {
      final result = await _usecase();

      state = NotificationState.success(result);
    } catch (e) {
      state = NotificationState.error('Failed to load addresses: ${e.toString()}');
    }
  }
}
