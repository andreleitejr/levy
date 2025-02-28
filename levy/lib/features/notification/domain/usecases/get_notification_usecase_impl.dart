import 'package:injectable/injectable.dart';
import 'package:levy/features/notification/notification.dart';

@Injectable(as: GetNotificationUseCase)
final class GetNotificationUseCaseImpl implements GetNotificationUseCase {
  const GetNotificationUseCaseImpl(this._repository);

  final NotificationRepository _repository;

  @override
  Future<List<NotificationEntity>> call() async {
    return _repository.get();
  }
}
