import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/commons/widgets/state_builder.dart';

final class BusState implements GenericStateBase {
  final List<BusEntity> data;

  @override
  final String? errorMessage;
  @override
  final bool isLoading;

  const BusState({
    this.data = const [],
    this.errorMessage,
    this.isLoading = false,
  });

  const BusState.loading()
      : data = const [],
        errorMessage = null,
        isLoading = true;

  const BusState.success(List<BusEntity> value)
      : data = value,
        errorMessage = null,
        isLoading = false;

  const BusState.error(String message)
      : data = const [],
        errorMessage = message,
        isLoading = false;
}
