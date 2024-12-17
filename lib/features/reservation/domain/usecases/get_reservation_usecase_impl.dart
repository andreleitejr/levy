import 'package:injectable/injectable.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';
import 'package:levy/features/reservation/domain/repositories/reservation_repository.dart';
import 'package:levy/features/reservation/domain/usecases/get_reservation_usecase.dart';

@Injectable(as: GetReservationUseCase)
class GetReservationUseCaseImpl implements GetReservationUseCase {
  const GetReservationUseCaseImpl(this._repository);

  final ReservationRepository _repository;

  @override
  Future<ReservationEntity?> call(String reservationId) async {
    return _repository.getReservation(reservationId);
  }
}
