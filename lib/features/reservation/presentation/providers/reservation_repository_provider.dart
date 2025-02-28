import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/reservation/data/repositories/reservation_repository_impl.dart';
import 'package:levy/features/reservation/domain/repositories/reservation_repository.dart';
import 'package:levy/features/reservation/presentation/providers/reservation_datasource_provider.dart';

final reservationRepositoryProvider = Provider<ReservationRepository>((ref) {
  return ReservationRepositoryImpl(ref.read(reservationDataSourceProvider));
});
