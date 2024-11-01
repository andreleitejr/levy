import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/address/domain/entities/address_entity.dart';
import 'package:levy/features/search/presentation/states/search_state.dart';
import 'package:levy/features/user/domain/usecases/get_user_usecase.dart';

final class SearchNotifier extends StateNotifier<SearchState> {
  final GetUserUseCase _getUserUseCase;

  SearchNotifier(this._getUserUseCase) : super(const SearchState.loading());

  Future<void> init() async {
    try {
      await Future.delayed(const Duration(milliseconds: 500));

      final user = await _getUserUseCase();
      
      state = SearchState.success(user);
    } catch (e) {
      state = SearchState.error('Failed to load search page: ${e.toString()}');
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
