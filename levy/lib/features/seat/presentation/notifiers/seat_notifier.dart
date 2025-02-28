import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/seat/domain/entities/seat_entity.dart';
import 'package:levy/features/seat/presentation/states/seat_state.dart';

final class SeatNotifier extends StateNotifier<SeatState> {
  SeatNotifier(List<SeatEntity> seats) : super(SeatState.loading());

  Future<void> init(List<SeatEntity> seats) async {
    try {
      state = SeatState.success(seats);
    } catch (e) {
      state = SeatState.error('Failed to load seats: ${e.toString()}');
    }
  }

  void updateSeat(SeatEntity seat) {
    state = state.copyWith(
      data: state.data,
      selectedSeat: seat,
    );
  }
}
