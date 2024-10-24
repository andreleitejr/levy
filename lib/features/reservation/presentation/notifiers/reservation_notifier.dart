import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/reservation/data/models/reservation_model.dart';
import 'package:levy/features/reservation/domain/usecases/create_reservation_usecase.dart';
import 'package:levy/features/reservation/presentation/states/reservation_state.dart';

class ReservationNotifier extends StateNotifier<ReservationState> {
  final CreateReservationUseCase _usecase;

  ReservationNotifier(this._usecase) : super(ReservationState.initial());

  Future<void> createReservation(ReservationModel reservation) async {
    try {
      final result = await _usecase(reservation);
      state = ReservationState.success(result);
    } catch (e) {
      state = ReservationState.error(
          'Failed to create reservation: ${e.toString()}');
    }
  }
}
