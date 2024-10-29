import 'package:levy/features/commons/widgets/state_builder.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';

class ReservationState implements GenericStateBase {
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

  const ReservationState.loading() : this(isLoading: true);
  const ReservationState.success(List<ReservationEntity> data) : this(data: data);
  const ReservationState.error(String message) : this(errorMessage: message);
}
