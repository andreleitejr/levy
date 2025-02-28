import 'package:levy/features/user/domain/entities/user_entity.dart';

abstract class UserRepository {
  Future<UserEntity> get();
}
