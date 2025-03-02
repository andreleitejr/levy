import 'package:injectable/injectable.dart';
import 'package:levy/features/user/data/datasources/user_datasource.dart';
import 'package:levy/features/user/data/models/user_model.dart';
import 'package:levy_core/core.dart';

@Injectable(as: UserDataSource, env: [InjectEnv.impl])
final class UserDataSourceImpl implements UserDataSource {
  @override
  Future<UserModel> get() async {
    return UserModel();
  }
}
