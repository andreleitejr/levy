import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/search/presentation/notifiers/search_notifier.dart';
import 'package:levy/features/search/presentation/states/search_state.dart';

final searchNotifierProvider = StateNotifierProvider<SearchNotifier, SearchState>((ref) {
  return SearchNotifier();
});
