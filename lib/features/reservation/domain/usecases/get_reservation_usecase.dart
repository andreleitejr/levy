import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';

abstract class GetReservationUseCase {
  Future<ReservationEntity?> call(String userId);
}