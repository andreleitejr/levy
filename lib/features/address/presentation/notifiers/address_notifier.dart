import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/address/domain/usecases/get_address_usecase.dart';
import 'package:levy/features/address/presentation/states/address_state.dart';

final class AddressNotifier extends StateNotifier<AddressState> {
  final GetAddressUseCase _usecase;

  AddressNotifier(this._usecase) : super(AddressState.initial());

  Future<void> init() async {
    await loadAddresses();
  }

  Future<void> loadAddresses() async {
    try {
      final result = await _usecase.call();
      state = AddressState(addresses: result);
    } catch (e) {
      /// TODO: Implementar State de Erro
      // state = BusState(errorMessage: 'Failed to load buses');
    }
  }
}
