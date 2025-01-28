// import 'package:flutter/foundation.dart';
// import 'package:injectable/injectable.dart';
// import 'package:levy/core/commons/domain/enums/inject_env.dart';
// import 'package:levy/features/reservation/data/datasources/reservation_datasource.dart';
// import 'package:levy/features/reservation/data/models/reservation_model.dart';
// import 'package:levy/features/reservation/external/reservation_entity_mock.dart';
//
// @Injectable(as: ReservationDataSource, env: [InjectEnv.mock])
// final class ReservationDataSourceMock implements ReservationDataSource {
//   @override
//   Future<bool> createReservation(ReservationModel reservation) async {
//     return true;
//   }
//
//   @override
//   Future<List<ReservationModel>> getReservation(String reservationId) async {
//     try {
//       return ReservationMock.response.map((reservation) {
//         return ReservationModel.fromJson(reservation);
//       }).toList();
//     } catch (e) {
//       return [];
//     }
//   }
// }
