import 'package:levy/features/reservation/data/models/reservation_model.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';

abstract class CreateReservationUseCase {
  Future<ReservationEntity> call(ReservationModel reservation);
}