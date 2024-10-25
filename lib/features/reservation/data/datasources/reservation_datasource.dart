import 'package:levy/features/reservation/data/models/reservation_model.dart';

abstract class ReservationDataSource {
  Future<bool> createReservation(ReservationModel reservation);
  Future<List<ReservationModel>> getReservation(String reservationId);
}