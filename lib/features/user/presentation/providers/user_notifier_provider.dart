import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/user/presentation/notifiers/user_notifier.dart';
import 'package:levy/features/user/presentation/providers/user_usecase_provider.dart';
import 'package:levy/features/user/presentation/states/user_state.dart';

final userNotifierProvider = StateNotifierProvider<UserNotifier, UserState>((ref) {
  return UserNotifier(ref.read(userUseCaseProvider));
});
