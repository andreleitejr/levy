import 'package:levy/features/reservation/data/models/reservation_model.dart';

abstract class ReservationDataSource {
  Future<ReservationModel> createReservation({
    required String seatNumber,
    required String busId,
  });
}