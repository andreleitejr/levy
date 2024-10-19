import 'package:injectable/injectable.dart';
import 'package:levy/features/notification/domain/entities/notification_entity.dart';
import 'package:levy/features/notification/domain/repositories/notification_repository.dart';
import 'package:levy/features/notification/domain/usecases/get_notification_usecase.dart';

@Injectable(as: GetNotificationUseCase)
final class GetNotificationUseCaseImpl implements GetNotificationUseCase {
  const GetNotificationUseCaseImpl(this._repository);

  final NotificationRepository _repository;

  @override
  Future<List<NotificationEntity>> get() async => _repository.get();
}
