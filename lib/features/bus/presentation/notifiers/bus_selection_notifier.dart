import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/bus/presentation/enums/bus_selection_stage.dart';
import 'package:levy/features/bus/presentation/states/bus_selection_state.dart';
import 'package:levy/features/seat/domain/entities/seat_entity.dart';

final class BusSelectionNotifier extends StateNotifier<BusSelectionState> {
  BusSelectionNotifier() : super(BusSelectionState.initial());

  void selectDepartureBus(BusEntity bus, SeatEntity seat) {
    state = state.copyWith(
      departureBus: bus,
      departureSeat: seat,
      stage: BusSelectionStage.selected,
    );
  }

  void selectReturnBus(BusEntity bus, SeatEntity seat) {
    state = state.copyWith(
      returnBus: bus,
      returnSeat: seat,
      stage: BusSelectionStage.completed,
    );
  }
}
