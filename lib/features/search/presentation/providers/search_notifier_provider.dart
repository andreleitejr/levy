import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/search/presentation/notifiers/notifiers.dart';
import 'package:levy/features/search/presentation/states/search_state.dart';

final searchNotifierProvider = StateNotifierProvider<SearchNotifier, SearchState>(
      (ref) => SearchNotifier(),
);