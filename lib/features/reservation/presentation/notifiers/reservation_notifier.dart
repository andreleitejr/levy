import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/reservation/domain/usecases/get_reservation_usecase.dart';
import 'package:levy/features/reservation/presentation/states/reservation_state.dart';

final class ReservationNotifier extends StateNotifier<ReservationState> {
  final GetReservationUseCase _usecase;

  ReservationNotifier(this._usecase) : super(ReservationState.initial());

  Future<void> get(String reservationId) async {
    try {
      final result = await _usecase(reservationId);
      state = ReservationState.success(result);
    } catch (e) {
      state = ReservationState.error('Failed to create reservation: ${e.toString()}');
    }
  }
}
