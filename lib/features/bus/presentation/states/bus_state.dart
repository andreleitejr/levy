import 'package:equatable/equatable.dart';
import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/commons/widgets/state_builder.dart';

final class BusState extends Equatable implements GenericStateBase {
  final List<BusEntity>? data;
  @override
  final String? errorMessage;
  @override
  final bool isLoading;

  const BusState({
    this.data,
    this.errorMessage,
    this.isLoading = false,
  });

  const BusState.loading()
      : data = null,
        errorMessage = null,
        isLoading = true;

  const BusState.success(List<BusEntity> value)
      : data = value,
        errorMessage = null,
        isLoading = false;

  const BusState.error(String message)
      : data = null,
        errorMessage = message,
        isLoading = false;

  @override
  List<Object?> get props => [data, errorMessage, isLoading];
}
