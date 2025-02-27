import 'package:injectable/injectable.dart';
import 'package:levy/core/commons/domain/enums/inject_env.dart';
import 'package:levy/features/notification/data/datasources/notification_datasource.dart';
import 'package:levy/features/notification/data/models/notification_model.dart';

@Injectable(as: NotificationDataSource, env: [InjectEnv.impl])
final class NotificationDataSourceImpl implements NotificationDataSource {
  @override
  Future<List<NotificationModel>> get() async {
    return [];
  }
}
