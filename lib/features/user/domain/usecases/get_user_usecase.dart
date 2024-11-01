import 'package:levy/features/user/domain/entities/user_entity.dart';

abstract class GetUserUseCase {
  Future<UserEntity> call();
}
