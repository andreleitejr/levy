import 'package:injectable/injectable.dart';
import 'package:levy/features/notification/data/datasources/notification_datasource.dart';
import 'package:levy/features/notification/domain/entities/notification_entity.dart';
import 'package:levy/features/notification/domain/repositories/notification_repository.dart';

@Injectable(as: NotificationRepository)
final class NotificationRepositoryImpl implements NotificationRepository {
  const NotificationRepositoryImpl(this._datasource);

  final NotificationDataSource _datasource;

  @override
  Future<List<NotificationEntity>> get() async => _datasource.get();
}
