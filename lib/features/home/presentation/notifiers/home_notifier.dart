import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/address/domain/entities/address_entity.dart';
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
}
