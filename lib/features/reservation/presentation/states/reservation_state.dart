import 'package:equatable/equatable.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';

class ReservationState extends Equatable {
  final ReservationEntity? reservation;
  final String? errorMessage;

  const ReservationState({this.reservation, this.errorMessage});

  const ReservationState.initial() : reservation = null, errorMessage = null;

  const ReservationState.success(ReservationEntity reservation)
      : reservation = reservation, errorMessage = null;

  const ReservationState.error(String message)
      : reservation = null, errorMessage = message;

  @override
  List<Object?> get props => [reservation, errorMessage];
}
