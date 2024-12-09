import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/address/domain/entities/address_entity.dart';
import 'package:levy/features/home/presentation/states/home_state.dart';
import 'package:levy/features/user/domain/usecases/get_user_usecase.dart';

final class HomeNotifier extends StateNotifier<HomeState> {
  final GetUserUseCase _getUserUseCase;

  HomeNotifier(this._getUserUseCase) : super(const HomeState.loading());

  Future<void> init() async {
    try {
      await Future.delayed(const Duration(milliseconds: 500));

      final user = await _getUserUseCase();
      
      state = HomeState.success(user);
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
}
