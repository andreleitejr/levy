import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';

abstract class ReservationDataSource {
  Future<ReservationEntity> createReservation({
    required String seatNumber,
    required String busId,
  });
}