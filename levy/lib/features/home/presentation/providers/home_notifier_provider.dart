import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/home/home.dart';

final searchNotifierProvider = StateNotifierProvider<HomeNotifier, HomeState>((ref) {
  return HomeNotifier();
});
