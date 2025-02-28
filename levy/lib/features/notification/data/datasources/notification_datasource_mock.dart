import 'package:injectable/injectable.dart';
import 'package:levy/core/inject/inject_env.dart';
import 'package:levy/features/notification/notification.dart';

@Injectable(as: NotificationDataSource, env: [InjectEnv.mock])
final class NotificationDataSourceMock implements NotificationDataSource {
  @override
  Future<List<NotificationModel>> get() async {
    await Future.delayed(const Duration(milliseconds: 600));

    return NotificationMock.response.map<NotificationModel>((notification) {
      return NotificationModel.fromJson(notification);
    }).toList();
  }
}
