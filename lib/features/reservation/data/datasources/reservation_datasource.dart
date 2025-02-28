import 'package:levy/features/reservation/data/models/reservation_model.dart';

abstract class ReservationDataSource {
  Future<bool> set(ReservationModel reservation);
  Future<ReservationModel?> get(String userId);
}
