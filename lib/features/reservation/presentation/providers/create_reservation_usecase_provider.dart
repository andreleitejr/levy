import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/reservation/domain/usecases/set_reservation_usecase.dart';
import 'package:levy/features/reservation/domain/usecases/set_reservation_usecase_impl.dart';
import 'package:levy/features/reservation/presentation/providers/reservation_repository_provider.dart';

final createReservationUseCaseProvider = Provider<SetReservationUseCase>((ref) {
  return SetReservationUseCaseImpl(ref.read(reservationRepositoryProvider));
});
