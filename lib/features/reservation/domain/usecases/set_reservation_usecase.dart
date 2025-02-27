import 'package:levy/features/reservation/data/models/reservation_model.dart';

abstract class SetReservationUseCase {
  Future<bool> call(ReservationModel reservation);
}
