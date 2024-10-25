import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/reservation/presentation/notifiers/reservation_notifier.dart';
import 'package:levy/features/reservation/presentation/providers/get_reservation_usecase_provider.dart';
import 'package:levy/features/reservation/presentation/states/reservation_state.dart';

final reservationNotifierProvider = StateNotifierProvider<ReservationNotifier, ReservationState>((ref) {
  return ReservationNotifier(ref.read(getReservationUseCaseProvider));
});