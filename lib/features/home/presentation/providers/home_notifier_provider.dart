import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/home/presentation/notifiers/home_notifier.dart';
import 'package:levy/features/home/presentation/states/home_state.dart';
import 'package:levy/features/user/presentation/providers/user_usecase_provider.dart';

final searchNotifierProvider =
    StateNotifierProvider<HomeNotifier, HomeState>((ref) {
  final getUserUseCase = ref.read(userUseCaseProvider);
  return HomeNotifier(getUserUseCase);
});
