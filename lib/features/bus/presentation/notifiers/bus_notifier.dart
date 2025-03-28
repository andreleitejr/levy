import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/bus/domain/usecases/get_bus_usecase.dart';
import 'package:levy/features/bus/presentation/states/bus_state_impl.dart';
import 'package:levy/features/search/domain/entities/search_entity.dart';
import 'package:levy/features/seat/domain/entities/seat_entity.dart';

final class BusNotifier extends StateNotifier<BusStateImpl> {
  final GetBusUseCase _usecase;

  BusNotifier(this._usecase) : super(BusStateImpl.loading());

  late final SearchEntity _search;

  Future<void> init(SearchEntity search) async {
    try {
      _search = search;

      final result = await _usecase(search: _search);

      state = BusStateImpl.success(result);
    } catch (e) {
      state = BusStateImpl.error('Failed to load return buses: ${e.toString()}');
    }
  }

  Future<void> updateDepartureBus({
    required BusEntity bus,
    required SeatEntity seat,
  }) async {
    final result = await _usecase(search: _search, isReturnBus: true);

    state = state.copyWith(
      data: result,
      departureBus: bus,
      departureSeat: seat,
    );
  }

  void updateReturnBus({
    required BusEntity bus,
    required SeatEntity seat,
  }) {
    state = state.copyWith(
      returnBus: bus,
      returnSeat: seat,
    );
  }
}
