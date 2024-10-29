import 'package:levy/features/commons/widgets/state_builder.dart';
import 'package:levy/features/seat/domain/entities/seat_entity.dart';

final class SeatState implements GenericStateBase {
  final List<SeatEntity>? data;
  final SeatEntity? selectedSeat;
  @override
  final String? errorMessage;
  @override
  final bool isLoading;

  const SeatState({
    this.data,
    this.selectedSeat,
    this.errorMessage,
    this.isLoading = false,
  });

  const SeatState.loading()
      : data = null,
        selectedSeat = null,
        errorMessage = null,
        isLoading = true;

  const SeatState.success(List<SeatEntity> value)
      : data = value,
        selectedSeat = null,
        errorMessage = null,
        isLoading = false;

  const SeatState.selected({
    List<SeatEntity>? seats,
    required SeatEntity selected,
  })  : data = seats,
        selectedSeat = selected,
        errorMessage = null,
        isLoading = false;

  const SeatState.error(String message)
      : data = null,
        selectedSeat = null,
        errorMessage = message,
        isLoading = false;
}
