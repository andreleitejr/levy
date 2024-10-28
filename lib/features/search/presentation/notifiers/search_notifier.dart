import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/address/data/models/address_model.dart';
import 'package:levy/features/address/domain/entities/address_entity.dart';
import 'package:levy/features/search/data/models/search_model.dart';
import 'package:levy/features/search/domain/entities/search_entity.dart';
import 'package:levy/features/search/presentation/states/search_state.dart';

class SearchNotifier extends StateNotifier<SearchState> {
  SearchNotifier() : super(const SearchState.loading());

  Future<void> init() async {
    try {
      await Future.delayed(const Duration(milliseconds: 3500));

      state = SearchState.success();
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
