import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/notification/domain/usecases/get_notification_usecase.dart';
import 'package:levy/features/notification/presentation/states/notification_state.dart';

final class NotificationNotifier extends StateNotifier<NotificationState> {
  final GetNotificationUseCase _usecase;

  NotificationNotifier(this._usecase) : super(NotificationState.initial());

  Future<void> init() async {
    await loadNotifications();
  }

  Future<void> loadNotifications() async {
    try {
      final result = await _usecase.call();
      state = NotificationState(notifications: result);
    } catch (e) {
      /// TODO: Implementar State de Erro
      // state = BusState(errorMessage: 'Failed to load buses');
    }
  }
}
