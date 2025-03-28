import 'package:injectable/injectable.dart';
import 'package:levy/core/commons/domain/enums/inject_env.dart';
import 'package:levy/features/reservation/data/datasources/reservation_datasource.dart';
import 'package:levy/features/reservation/data/models/reservation_model.dart';
import 'package:levy/features/reservation/external/reservation_mock.dart';

@Injectable(as: ReservationDataSource, env: [InjectEnv.mock])
final class ReservationDataSourceMock implements ReservationDataSource {
  @override
  Future<bool> createReservation(ReservationModel reservation) async {
    return true;
  }

  @override
  Future<ReservationModel?> getReservation(String userId) async {
    return ReservationModel.fromJson(ReservationMock.response);
  }
}
