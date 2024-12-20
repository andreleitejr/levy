import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/bus/data/models/bus_model.dart';
import 'package:levy/features/bus/domain/usecases/get_bus_usecase.dart';
import 'package:levy/features/reservation/data/models/reservation_model.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';
import 'package:levy/features/reservation/domain/usecases/get_reservation_usecase.dart';
import 'package:levy/features/reservation/presentation/states/reservation_state.dart';
import 'package:levy/features/user/domain/entities/user_entity.dart';
import 'package:levy/main.dart';

final class ReservationNotifier extends StateNotifier<ReservationState> {
  final GetReservationUseCase _usecase;
  final GetBusUseCase _busUseCase;

  ReservationNotifier(this._usecase, this._busUseCase)
      : super(ReservationState.loading());

  Future<void> init() async {
    try {

      final user = getIt<UserEntity>();
      final reservation = await _usecase(user.id);

      ReservationEntity? updatedReservation;

      if (reservation != null) {
        final buses = await _busUseCase();

        final departureBus = buses.firstWhere(
          (bus) => bus.id == reservation.departureBusId,
        );

        final returnBus = buses.firstWhere(
          (bus) => bus.id == reservation.returnBusId,
        );

        updatedReservation = ReservationModel(
          reservationId: reservation.reservationId,
          userId: reservation.userId,
          paymentId: reservation.paymentId,
          date: reservation.date,
          departureBusId: reservation.departureBusId,
          returnBusId: reservation.returnBusId,
          departureBus: departureBus as BusModel,
          returnBus: returnBus as BusModel,
        );

        await Future.delayed(const Duration(milliseconds: 1000));
      }
      state = ReservationState.success(updatedReservation);
    } catch (e) {
      state = ReservationState.error('Failed to load reservation: ${e.toString()}');
    }
  }
}
