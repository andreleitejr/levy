import 'package:levy/features/user/data/models/user_model.dart';

abstract class UserDataSource {
  Future<UserModel> get();
}
