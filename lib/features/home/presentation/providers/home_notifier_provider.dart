import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/home/presentation/notifiers/home_notifier.dart';
import 'package:levy/features/home/presentation/states/home_state.dart';

final searchNotifierProvider = StateNotifierProvider<HomeNotifier, HomeState>((ref) {
  return HomeNotifier();
});
