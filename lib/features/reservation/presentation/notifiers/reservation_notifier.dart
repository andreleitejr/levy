import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/reservation/domain/usecases/create_reservation_usecase.dart';
import 'package:levy/features/reservation/presentation/states/reservation_state.dart';

class ReservationNotifier extends StateNotifier<ReservationState> {
  final CreateReservationUseCase _useCase;

  ReservationNotifier(this._useCase) : super(ReservationState.initial());

  Future<void> createReservation({
    required String seatNumber,
    required String busId,
  }) async {
    try {
      final reservation = await _useCase.execute(
        seatNumber: seatNumber,
        busId: busId,
      );
      state = ReservationState.success(reservation);
    } catch (e) {
      state = ReservationState.error('Failed to create reservation: ${e.toString()}');
    }
  }
}