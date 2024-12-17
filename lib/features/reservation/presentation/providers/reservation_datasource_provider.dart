import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/reservation/data/datasources/reservation_datasource.dart';
import 'package:levy/features/reservation/data/datasources/reservation_datasource_impl.dart';

final reservationDataSourceProvider = Provider<ReservationDataSource>((ref) {
  return ReservationDataSourceImpl();
});