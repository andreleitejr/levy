import 'package:equatable/equatable.dart';
import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/bus/presentation/enums/bus_selection_stage.dart';
import 'package:levy/features/seat/domain/entities/seat_entity.dart';

final class BusSelectionState extends Equatable {
  final BusEntity? departureBus;
  final SeatEntity? departureSeat;
  final BusEntity? returnBus;
  final SeatEntity? returnSeat;
  final BusSelectionStage stage;

  const BusSelectionState({
    this.departureBus,
    this.departureSeat,
    this.returnBus,
    this.returnSeat,
    required this.stage,
  });

  const BusSelectionState.initial()
      : departureBus = null,
        departureSeat = null,
        returnBus = null,
        returnSeat = null,
        stage = BusSelectionStage.initial;

  BusSelectionState copyWith({
    BusEntity? departureBus,
    SeatEntity? departureSeat,
    BusEntity? returnBus,
    SeatEntity? returnSeat,
    BusSelectionStage? stage,
  }) {
    return BusSelectionState(
      departureBus: departureBus ?? this.departureBus,
      departureSeat: departureSeat ?? this.departureSeat,
      returnBus: returnBus ?? this.returnBus,
      returnSeat: returnSeat ?? this.returnSeat,
      stage: stage ?? this.stage,
    );
  }

  @override
  List<Object?> get props =>
      [departureBus, departureSeat, returnBus, returnSeat, stage];
}
