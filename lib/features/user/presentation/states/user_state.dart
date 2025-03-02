import 'package:levy/features/user/data/models/user_model.dart';
import 'package:levy/features/user/domain/entities/user_entity.dart';
import 'package:levy_core/core.dart';

final class UserState implements GenericStateBase {
  final UserEntity data;

  @override
  final String errorMessage;

  @override
  final bool isLoading;


  const UserState({
    this.data = const UserModel(),
    this.errorMessage = '',
    this.isLoading = false,
  });

  const UserState.loading() : this(isLoading: true);
  const UserState.success(UserEntity data) : this(data: data);
  const UserState.error(String message) : this(errorMessage: message);
}
