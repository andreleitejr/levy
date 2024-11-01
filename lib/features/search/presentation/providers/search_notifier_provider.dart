import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/search/presentation/notifiers/search_notifier.dart';
import 'package:levy/features/search/presentation/states/search_state.dart';
import 'package:levy/features/user/presentation/providers/user_usecase_provider.dart';

final searchNotifierProvider =
    StateNotifierProvider<SearchNotifier, SearchState>((ref) {
  final getUserUseCase = ref.read(userUseCaseProvider);
  return SearchNotifier(getUserUseCase);
});
