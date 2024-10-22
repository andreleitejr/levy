import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/seat/domain/entities/seat_entity.dart';
import 'package:levy/features/seat/presentation/notifiers/seat_notifier.dart';
import 'package:levy/features/seat/presentation/states/seat_state.dart';

final seatProvider = StateNotifierProvider.family<SeatNotifier, SeatState, List<SeatEntity>>(
  (ref, seats) => SeatNotifier(seats),
);
