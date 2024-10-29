import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/seat/presentation/notifiers/seat_notifier.dart';
import 'package:levy/features/seat/presentation/states/seat_state.dart';

final seatNotifierProvider = StateNotifierProvider<SeatNotifier, SeatState>((ref) {
  return SeatNotifier([]);
});