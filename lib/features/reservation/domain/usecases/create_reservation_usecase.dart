import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';

abstract class CreateReservationUseCase {
  Future<ReservationEntity> call({
    required String seatNumber,
    required String busId,
  });
}