import 'package:injectable/injectable.dart';
import 'package:levy/features/reservation/data/models/reservation_model.dart';
import 'package:levy/features/reservation/domain/repositories/reservation_repository.dart';
import 'package:levy/features/reservation/domain/usecases/set_reservation_usecase.dart';

@Injectable(as: SetReservationUseCase)
class SetReservationUseCaseImpl implements SetReservationUseCase {
  final ReservationRepository _repository;

  const SetReservationUseCaseImpl(this._repository);

  @override
  Future<bool> call(ReservationModel reservation) async {
    return _repository.set(reservation);
  }
}
