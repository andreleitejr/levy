import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/address/address.dart';

final class AddressNotifier extends StateNotifier<AddressState> {
  final GetAddressUseCase _usecase;
  final List<AddressEntity> _allAddresses = [];

  AddressNotifier(this._usecase) : super(const AddressState.loading());

  Future<void> init() async {
    try {
      final result = await _usecase();

      _allAddresses.clear();
      _allAddresses.addAll(result);

      state = AddressState.success(_allAddresses);
    } catch (e) {
      debugPrint('Failed to load addresses: $e');
      state = AddressState.error(AddressTranslation.errors.loadError);
    }
  }

  void filterAddresses(String query) {
    final filtered = _allAddresses.where((address) {
      return address.street.toLowerCase().contains(query.toLowerCase()) ||
          address.line.toLowerCase().contains(query.toLowerCase());
    }).toList();

    state = AddressState.success(filtered);
  }
}
