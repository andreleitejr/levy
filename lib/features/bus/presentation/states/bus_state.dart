import 'package:equatable/equatable.dart';
import 'package:levy/features/bus/domain/entities/bus_entity.dart';

// final class BusState {
//   const BusState({
//     required this.buses,
//   });
//
//   final List<BusEntity> buses;
// }

// class BusState {
//   final List<BusEntity> buses;
//   final bool isLoading;
//   final String? errorMessage;
//
//   BusState({this.buses = const [], this.isLoading = false, this.errorMessage});
// }

// TODO: INSERIR STATE DE ERRO
class BusState extends Equatable {
  final List<BusEntity> buses;

  const BusState({
    required this.buses,
  });

  const BusState.initial({
    this.buses = const [],
  });

  @override
  List<Object> get props => [buses];
}
