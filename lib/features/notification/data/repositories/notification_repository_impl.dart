import 'package:injectable/injectable.dart';
import 'package:levy/features/notification/notification.dart';

@Injectable(as: NotificationRepository)
final class NotificationRepositoryImpl implements NotificationRepository {
  const NotificationRepositoryImpl(this._datasource);

  final NotificationDataSource _datasource;

  @override
  Future<List<NotificationEntity>> get() async {
    return _datasource.get();
  }
}
