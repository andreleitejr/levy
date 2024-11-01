import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/user/domain/usecases/get_user_usecase.dart';
import 'package:levy/features/user/presentation/states/user_state.dart';

final class UserNotifier extends StateNotifier<UserState> {
  final GetUserUseCase _usecase;

  UserNotifier(this._usecase) : super(const UserState.loading());

  Future<void> init() async {
    try {
      final result = await _usecase();

      await Future.delayed(const Duration(milliseconds: 500));

      state = UserState.success(result);
    } catch (e) {
      state = UserState.error('Failed to load users: ${e.toString()}');
    }
  }
}
