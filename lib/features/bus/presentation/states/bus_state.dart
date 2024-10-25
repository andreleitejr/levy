import 'package:equatable/equatable.dart';
import 'package:levy/features/bus/domain/entities/bus_entity.dart';

final class BusState extends Equatable {
  final List<BusEntity> buses;
  final String? errorMessage;

  const BusState({
    required this.buses,
    this.errorMessage,
  });

  const BusState.initial()
      : buses = const [],
        errorMessage = null;

  const BusState.error(String message)
      : buses = const [],
        errorMessage = message;

  @override
  List<Object?> get props => [buses, errorMessage];
}
