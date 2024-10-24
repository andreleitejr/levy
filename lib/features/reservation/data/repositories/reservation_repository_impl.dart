import 'package:injectable/injectable.dart';
import 'package:levy/features/reservation/data/datasources/reservation_datasource.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';
import 'package:levy/features/reservation/domain/repositories/reservation_repository.dart';

@Injectable(as: ReservationRepository)
final class ReservationRepositoryImpl implements ReservationRepository {
  const ReservationRepositoryImpl(this._datasource);

  final ReservationDataSource _datasource;

  @override
  Future<ReservationEntity> createReservation({
    required String seatNumber,
    required String busId,
  }) async {
    return await _datasource.createReservation(
      seatNumber: seatNumber,
      busId: busId,
    );
  }
}
