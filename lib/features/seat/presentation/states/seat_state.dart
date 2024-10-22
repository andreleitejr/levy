import 'package:levy/features/seat/domain/entities/seat_entity.dart';

class SeatState {
  final List<SeatEntity> seats;
  final SeatEntity? selectedSeat;

  SeatState({
    required this.seats,
    this.selectedSeat,
  });
}