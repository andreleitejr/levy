import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/address/domain/entities/address_entity.dart';
import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/home/presentation/states/home_state.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';
import 'package:levy/features/user/domain/entities/user_entity.dart';

final class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier() : super(const HomeState.loading());

  Future<void> init({
    required UserEntity? user,
    ReservationEntity? reservation,
  }) async {
    try {
      await Future.delayed(const Duration(milliseconds: 1500));
      state = HomeState.success(user: user, reservation: reservation);
    } catch (e) {
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

  bool isValidSearch(HomeState state) {
    return state.departureAddress != null &&
        state.returnAddress != null &&
        state.departureTime != null &&
        state.returnTime != null;
  }

  String calculateArrivalTime() {
    final now = DateTime.now();
    final reservation = state.reservation;

    if (reservation == null) return '';

    final departureBus = reservation.departureBus;
    final returnBus = reservation.returnBus;

    if (departureBus == null || returnBus == null) return '';

    final departureBusTime = departureBus.routes.first.departureTime;
    final returnBusTime = returnBus.routes.last.departureTime;

    final departureDateTime = _parseTime(departureBusTime, now);
    final returnDateTime = _parseTime(returnBusTime, now);

    DateTime? nextBusDateTime;

    if (departureDateTime != null && now.isBefore(departureDateTime)) {
      nextBusDateTime = departureDateTime;
    } else if (returnDateTime != null && now.isBefore(returnDateTime)) {
      nextBusDateTime = returnDateTime;
    }

    if (nextBusDateTime != null) {
      final difference = nextBusDateTime.difference(now);

      if (difference.inHours > 0) {
        return '${difference.inHours} hours';
      } else {
        return '${difference.inMinutes} minutes';
      }
    }

    return '';
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
