import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/map/map.dart';

final mapNotifierProvider = StateNotifierProvider<MapNotifier, MapState>((ref) {
  return MapNotifier();
});
