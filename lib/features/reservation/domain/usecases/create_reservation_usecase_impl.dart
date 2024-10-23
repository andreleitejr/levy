import 'package:injectable/injectable.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';
import 'package:levy/features/reservation/domain/repositories/reservation_repository.dart';
import 'package:levy/features/reservation/domain/usecases/create_reservation_usecase.dart';

@Injectable(as: CreateReservationUseCase)
class CreateReservationUseCaseImpl implements CreateReservationUseCase {
  final ReservationRepository _repository;

  const CreateReservationUseCaseImpl(this._repository);

  @override
  Future<ReservationEntity> execute({
    required String seatNumber,
    required String busId,
  }) async {
    return await _repository.createReservation(
      seatNumber: seatNumber,
      busId: busId,
    );
  }
}