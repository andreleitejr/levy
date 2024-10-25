import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';

abstract class GetReservationUseCase {
  Future<List<ReservationEntity>> call(String reservationId);
}