import 'package:levy/features/bus/data/models/bus_model.dart';
import 'package:levy/features/reservation/data/models/reservation_model.dart';

abstract class ReservationDataSource {
  Future<ReservationModel> createReservation(ReservationModel reservation);
}