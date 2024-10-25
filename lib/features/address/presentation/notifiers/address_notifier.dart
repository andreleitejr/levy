import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/address/domain/usecases/get_address_usecase.dart';
import 'package:levy/features/address/presentation/states/address_state.dart';

final class AddressNotifier extends StateNotifier<AddressState> {
  final GetAddressUseCase _usecase;

  AddressNotifier(this._usecase) : super(AddressState.loading());

  Future<void> init() async {
    try {
      final result = await _usecase();

      state = AddressState.success(result);
    } catch (e) {
      state = AddressState.error('Failed to load return buses: ${e.toString()}');
    }
  }
}
