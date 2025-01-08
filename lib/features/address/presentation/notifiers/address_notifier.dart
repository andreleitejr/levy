import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/address/domain/entities/address_entity.dart';
import 'package:levy/features/address/domain/usecases/get_address_usecase.dart';
import 'package:levy/features/address/presentation/states/address_state.dart';

final class AddressNotifier extends StateNotifier<AddressState> {
  final GetAddressUseCase _usecase;
  List<AddressEntity> _allAddresses = [];

  AddressNotifier(this._usecase) : super(const AddressState.loading());

  Future<void> init() async {
    try {
      await Future.delayed(const Duration(milliseconds: 600));

      final result = await _usecase();
      _allAddresses = result;

      state = AddressState.success(result);
    } catch (e) {
      state = AddressState.error('Failed to load addresses: ${e.toString()}');
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
