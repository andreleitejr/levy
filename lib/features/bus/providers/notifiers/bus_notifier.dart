import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/bus/domain/usecases/get_bus_usecase.dart';
import 'package:levy/features/bus/presentation/states/bus_state.dart';
import 'package:levy/features/search/domain/entities/search_entity.dart';

final class BusNotifier extends StateNotifier<BusState> {
  final GetBusUseCase _usecase;

  BusNotifier(this._usecase) : super(BusState.initial());

  Future<void> init(SearchEntity search) async {
    try {
      final buses = await _usecase.get(search);

      state = BusState(buses: buses);
    } catch (e) {
      /// TODO: Implementar State de Erro
      // state = BusState(errorMessage: 'Failed to load buses');
    }
  }
}
