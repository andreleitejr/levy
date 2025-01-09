import 'package:injectable/injectable.dart';
import 'package:levy/core/commons/domain/enums/inject_env.dart';
import 'package:levy/features/user/data/datasources/user_datasource.dart';
import 'package:levy/features/user/data/models/user_model.dart';
import 'package:levy/features/user/external/user_mock.dart';

@Injectable(as: UserDataSource, env: [InjectEnv.mock])
final class UserDataSourceMock implements UserDataSource {
  @override
  Future<UserModel> get() async {
    await Future.delayed(const Duration(milliseconds: 600));

    return UserModel.fromJson(UserMock.response);
  }
}
