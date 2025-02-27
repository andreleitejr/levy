import 'package:injectable/injectable.dart';
import 'package:levy/core/commons/domain/enums/inject_env.dart';
import 'package:levy/features/user/data/datasources/user_datasource.dart';
import 'package:levy/features/user/data/models/user_model.dart';

@Injectable(as: UserDataSource, env: [InjectEnv.impl])
final class UserDataSourceImpl implements UserDataSource {
  @override
  Future<UserModel> get() async {
    return UserModel();
  }
}
