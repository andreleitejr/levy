import 'package:equatable/equatable.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';

class ReservationState extends Equatable {
  final List<ReservationEntity>? data;
  final String? errorMessage;
  final bool isLoading;

  const ReservationState({
    this.data,
    this.errorMessage,
    this.isLoading = false,
  });

  const ReservationState.loading()
      : data = null,
        errorMessage = null,
        isLoading = true;

  const ReservationState.success(List<ReservationEntity> value)
      : data = value,
        errorMessage = null,
        isLoading = false;

  const ReservationState.error(String message)
      : data = null,
        errorMessage = message,
        isLoading = false;

  @override
  List<Object?> get props => [data, errorMessage, isLoading];
}
