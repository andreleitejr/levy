import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/commons/widgets/state_builder.dart';
import 'package:levy/features/seat/domain/entities/seat_entity.dart';

final class BusState implements GenericStateBase {
  final List<BusEntity> data;
  final BusEntity? departureBus;
  final SeatEntity? departureSeat;
  final BusEntity? returnBus;
  final SeatEntity? returnSeat;

  @override
  final String? errorMessage;

  @override
  final bool isLoading;

  const BusState({
    this.data = const [],
    this.departureBus,
    this.departureSeat,
    this.returnBus,
    this.returnSeat,
    this.errorMessage,
    this.isLoading = false,
  });

  const BusState.loading() : this(isLoading: true);
  const BusState.success(List<BusEntity> data) : this(data: data);
  const BusState.error(String message) : this(errorMessage: message);

  BusState copyWith({
    List<BusEntity>? data,
    BusEntity? departureBus,
    SeatEntity? departureSeat,
    BusEntity? returnBus,
    SeatEntity? returnSeat,
    String? errorMessage,
    bool? isLoading,
  }) {
    return BusState(
      data: data ?? this.data,
      departureBus: departureBus ?? this.departureBus,
      departureSeat: departureSeat ?? this.departureSeat,
      returnBus: returnBus ?? this.returnBus,
      returnSeat: returnSeat ?? this.returnSeat,
      errorMessage: errorMessage ?? this.errorMessage,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
