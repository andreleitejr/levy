import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/address/domain/entities/address_entity.dart';
import 'package:levy/features/search/presentation/states/search_state.dart';

class SearchNotifier extends StateNotifier<SearchState> {
  SearchNotifier() : super(const SearchState());

  void updateHomeAddress(AddressEntity address) {
    state = state.copyWith(homeAddress: address);
  }

  void updateWorkAddress(AddressEntity address) {
    state = state.copyWith(workAddress: address);
  }

  void updateHomeTime(String time) {
    state = state.copyWith(departureTime: time);
  }

  void updateWorkTime(String time) {
    state = state.copyWith(returnTime: time);
  }
}
