import 'package:injectable/injectable.dart';
import 'package:levy/features/reservation/data/datasources/reservation_datasource.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';
import 'package:levy/features/reservation/domain/repositories/reservation_repository.dart';

@Injectable(as: ReservationRepository)
class ReservationRepositoryImpl implements ReservationRepository {
  final ReservationDataSource _dataSource;

  const ReservationRepositoryImpl(this._dataSource);

  @override
  Future<ReservationEntity> createReservation({
    required String seatNumber,
    required String busId,
  }) async {
    return await _dataSource.createReservation(
      seatNumber: seatNumber,
      busId: busId,
    );
  }
}
