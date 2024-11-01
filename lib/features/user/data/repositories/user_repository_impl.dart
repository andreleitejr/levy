import 'package:injectable/injectable.dart';
import 'package:levy/features/user/data/datasources/user_datasource.dart';
import 'package:levy/features/user/domain/entities/user_entity.dart';
import 'package:levy/features/user/domain/repositories/user_repository.dart';

@Injectable(as: UserRepository)
final class UserRepositoryImpl implements UserRepository {
  const UserRepositoryImpl(this._datasource);

  final UserDataSource _datasource;

  @override
  Future<UserEntity> get() async {
    return _datasource.get();
  }
}
