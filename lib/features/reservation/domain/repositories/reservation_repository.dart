import 'package:levy/features/reservation/data/models/reservation_model.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';

abstract class ReservationRepository {
  Future<bool> set(ReservationModel reservation);
  Future<ReservationEntity?> get(String userId);
}
