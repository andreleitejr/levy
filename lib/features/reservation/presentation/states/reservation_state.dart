import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';
import 'package:levy_theme/core/theme/theme.dart';

class ReservationState implements GenericStateBase {
  final ReservationEntity? data;

  @override
  final String errorMessage;
  @override
  final bool isLoading;

  const ReservationState({
    this.data,
    this.errorMessage = '',
    this.isLoading = false,
  });

  const ReservationState.loading() : this(isLoading: true);
  const ReservationState.success(ReservationEntity? reservation) : this(data: reservation);
  const ReservationState.error(String message) : this(errorMessage: message);
}
