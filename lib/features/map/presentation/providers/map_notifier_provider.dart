import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/map/presentation/notifiers/map_notifier.dart';
import 'package:levy/features/map/presentation/states/map_state.dart';

final mapNotifierProvider = StateNotifierProvider<MapNotifier, MapState>((ref) {
  return MapNotifier();
});