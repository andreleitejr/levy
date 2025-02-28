import 'package:injectable/injectable.dart';
import 'package:levy/core/inject/inject_env.dart';
import 'package:levy/features/notification/notification.dart';

@Injectable(as: NotificationDataSource, env: [InjectEnv.impl])
final class NotificationDataSourceImpl implements NotificationDataSource {
  @override
  Future<List<NotificationModel>> get() async {
    return [];
  }
}
