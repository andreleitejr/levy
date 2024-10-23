import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';

abstract class ReservationRepository {
  Future<ReservationEntity> createReservation({
    required String seatNumber,
    required String busId,
  });
}