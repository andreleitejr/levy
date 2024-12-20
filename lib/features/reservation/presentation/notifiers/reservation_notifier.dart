import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';
import 'package:levy/features/reservation/presentation/states/reservation_state.dart';
import 'package:levy/main.dart';

final class ReservationNotifier extends StateNotifier<ReservationState> {
  ReservationNotifier() : super(ReservationState.loading());

  Future<void> init() async {
    try {
      final reservation = getIt<ReservationEntity>();

      state = ReservationState.success(reservation);
    } catch (e) {
      state =
          ReservationState.error('Failed to load reservation: ${e.toString()}');
    }
  }
}
