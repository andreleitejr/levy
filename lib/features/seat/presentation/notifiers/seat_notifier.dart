import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/seat/domain/entities/seat_entity.dart';
import 'package:levy/features/seat/presentation/states/seat_state.dart';

class SeatNotifier extends StateNotifier<SeatState> {
  SeatNotifier(List<SeatEntity> seats)
      : super(SeatState(seats: seats));

  void selectSeat(SeatEntity seat) {
    state = SeatState(
      seats: state.seats,
      selectedSeat: seat,
    );
  }
}
