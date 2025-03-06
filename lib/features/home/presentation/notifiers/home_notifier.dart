import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/home/home.dart';
import 'package:levy/main.dart';
import 'package:levy_shared_entities/entities.dart';

final class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier() : super(const HomeState.loading());

  Future<void> init() async {
    try {
      await Future.delayed(const Duration(milliseconds: 1500));

      UserEntity? user;

      ReservationEntity? reservation;

      if (getIt.isRegistered<ReservationEntity>()) {
        reservation = getIt<ReservationEntity>();
      }

      if (getIt.isRegistered<UserEntity>()) {
        user = getIt<UserEntity>();
      }

      state = HomeState.success(user: user, reservation: reservation);
    } catch (e) {
      state = HomeState.error('Failed to load Home Page: ${e.toString()}');
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

  bool isValidSearch(HomeState state) {
    return state.departureAddress != null &&
        state.returnAddress != null &&
        state.departureTime != null &&
        state.returnTime != null;
  }

  Duration? calculateTimeUntilNextBus() {
    final now = DateTime.now();
    final reservation = state.reservation;

    if (reservation == null) return null;

    final departureBus = reservation.departureBus;
    final returnBus = reservation.returnBus;

    if (departureBus == null || returnBus == null) return null;

    final departureDateTime = _parseTime(departureBus.routes.first.departureTime, now);
    final returnDateTime = _parseTime(returnBus.routes.last.departureTime, now);

    if (departureDateTime != null && now.isBefore(departureDateTime)) {
      return departureDateTime.difference(now);
    } else if (returnDateTime != null && now.isBefore(returnDateTime)) {
      return returnDateTime.difference(now);
    }

    return null;
  }

  BusEntity? getNextBus() {
    final now = DateTime.now();

    final reservation = state.reservation;

    if (reservation == null) return null;

    final departureBus = reservation.departureBus;
    final returnBus = reservation.returnBus;

    if (departureBus == null || returnBus == null) return null;

    final departureBusTime = departureBus.routes.first.departureTime;
    final returnBusTime = returnBus.routes.last.departureTime;

    final departureDateTime = _parseTime(departureBusTime, now);
    final returnDateTime = _parseTime(returnBusTime, now);

    if (departureDateTime != null && now.isBefore(departureDateTime)) {
      return state.reservation?.departureBus;
    } else if (returnDateTime != null && now.isBefore(returnDateTime)) {
      return state.reservation?.returnBus;
    }

    return null;
  }

  DateTime? _parseTime(String? time, DateTime now) {
    if (time == null) return null;
    final parts = time.split(':');
    if (parts.length != 2) return null;
    final hours = int.tryParse(parts[0]);
    final minutes = int.tryParse(parts[1]);
    if (hours == null || minutes == null) return null;

    return DateTime(now.year, now.month, now.day, hours, minutes);
  }
}
