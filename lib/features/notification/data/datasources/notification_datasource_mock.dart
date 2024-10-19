import 'package:injectable/injectable.dart';
import 'package:levy/features/notification/data/datasources/notification_datasource.dart';
import 'package:levy/features/notification/data/models/notification_model.dart';
import 'package:levy/features/notification/external/notification_mock.dart';
import 'package:levy/core/commons/domain/enums/inject_env.dart';

@Injectable(as: NotificationDataSource, env: [InjectEnv.mock])
final class NotificationDataSourceMock implements NotificationDataSource {
  @override
  Future<List<NotificationModel>> get() async {
    return NotificationMock.response.map<NotificationModel>((address) {
      return NotificationModel.fromJson(address);
    }).toList();
  }
}