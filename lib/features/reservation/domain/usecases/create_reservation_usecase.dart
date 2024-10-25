import 'package:levy/features/reservation/data/models/reservation_model.dart';

abstract class CreateReservationUseCase {
  Future<bool> call(ReservationModel reservation);
}