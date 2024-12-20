import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/address/domain/entities/address_entity.dart';
import 'package:levy/features/bus/data/models/bus_model.dart';
import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/bus/domain/usecases/get_bus_usecase.dart';
import 'package:levy/features/home/presentation/states/home_state.dart';
import 'package:levy/features/reservation/data/models/reservation_model.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';
import 'package:levy/features/reservation/domain/usecases/get_reservation_usecase.dart';
import 'package:levy/features/user/domain/entities/user_entity.dart';
import 'package:levy/features/user/domain/usecases/get_user_usecase.dart';
import 'package:levy/main.dart';

final class HomeNotifier extends StateNotifier<HomeState> {
  final GetUserUseCase _userUseCase;
  final GetReservationUseCase _reservationUseCase;
  final GetBusUseCase _busUseCase;

  HomeNotifier(
    this._userUseCase,
    this._reservationUseCase,
    this._busUseCase,
  ) : super(const HomeState.loading());

  Future<void> init() async {
    try {
      await Future.delayed(const Duration(milliseconds: 500));

      final user = await _userUseCase();

      if (!getIt.isRegistered<UserEntity>()) {
        getIt.registerSingleton<UserEntity>(user);
      }

      final reservation = await _getUserReservation();

      state = HomeState.success(user: user, reservation: reservation);
    } catch (e) {
      debugPrint(e.toString());
      state = HomeState.error('Failed to load search page: ${e.toString()}');
    }
  }

  void updateDepartureAddress(AddressEntity address) {
    state = state.copyWith(departureAddress: address);
  }

  void updateReturnAddress(AddressEntity address) {
    state = state.copyWith(returnAddress: address);
  }

  void updateDepartureTime(String time) {
    state = state.copyWith(departureTime: time);
  }

  void updateReturnTime(String time) {
    state = state.copyWith(returnTime: time);
  }

  Future<ReservationEntity?> _getUserReservation() async {
    final user = getIt<UserEntity>();
    final reservation = await _reservationUseCase(user.id);

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

      getIt.registerSingleton<ReservationEntity>(updatedReservation);
      getIt.registerSingleton<BusEntity>(departureBus,
          instanceName: 'departure');
      getIt.registerSingleton<BusEntity>(returnBus, instanceName: 'return');
    }

    return updatedReservation;
  }
}
