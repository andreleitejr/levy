import 'package:levy/features/commons/theme/widgets/theme_widgets.dart';
import 'package:levy/features/seat/domain/entities/seat_entity.dart';

final class SeatState implements GenericStateBase {
  final List<SeatEntity> data;
  final SeatEntity? selectedSeat;

  @override
  final String errorMessage;

  @override
  final bool isLoading;

  const SeatState({
    this.data = const [],
    this.selectedSeat,
    this.errorMessage = '',
    this.isLoading = false,
  });

  const SeatState.loading() : this(isLoading: true);
  const SeatState.success(List<SeatEntity> data) : this(data: data);
  const SeatState.error(String message) : this(errorMessage: message);

  SeatState copyWith({
    List<SeatEntity>? data,
    SeatEntity? selectedSeat,
    String? errorMessage,
    bool? isLoading,
  }) {
    return SeatState(
      data: data ?? this.data,
      selectedSeat: selectedSeat ?? this.selectedSeat,
      errorMessage: errorMessage ?? this.errorMessage,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
