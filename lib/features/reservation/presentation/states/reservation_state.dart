import 'package:equatable/equatable.dart';
import 'package:levy/features/commons/widgets/state_builder.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';

class ReservationState extends Equatable implements GenericStateBase {
  final List<ReservationEntity>? data;
  @override
  final String? errorMessage;
  @override
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
