import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/bus/domain/usecases/get_bus_usecase.dart';
import 'package:levy/features/bus/presentation/states/bus_state.dart';
import 'package:levy/features/search/data/models/search_model.dart';

final class BusNotifier extends StateNotifier<BusState> {
  final GetBusUseCase _usecase;

  BusNotifier(this._usecase) : super(BusState.initial());

  Future<void> init({
    required SearchModel search,
    bool isReturn = false,
  }) async {
    try {
      final returnBuses = await _usecase(search: search, isReturn: isReturn);

      state = BusState(buses: returnBuses);
    } catch (e) {
      state = BusState.error('Failed to load return buses: ${e.toString()}');
    }
  }
}
