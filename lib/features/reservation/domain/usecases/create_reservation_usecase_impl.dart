import 'package:injectable/injectable.dart';
import 'package:levy/features/reservation/data/models/reservation_model.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';
import 'package:levy/features/reservation/domain/repositories/reservation_repository.dart';
import 'package:levy/features/reservation/domain/usecases/create_reservation_usecase.dart';

@Injectable(as: CreateReservationUseCase)
class CreateReservationUseCaseImpl implements CreateReservationUseCase {
  final ReservationRepository _repository;

  const CreateReservationUseCaseImpl(this._repository);

  @override
  Future<ReservationEntity> call(ReservationModel reservation) async {
    return _repository.createReservation(reservation);
  }
}
