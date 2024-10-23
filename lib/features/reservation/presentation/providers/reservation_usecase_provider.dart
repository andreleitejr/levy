import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/reservation/domain/usecases/create_reservation_usecase.dart';
import 'package:levy/features/reservation/domain/usecases/create_reservation_usecase_impl.dart';
import 'package:levy/features/reservation/presentation/providers/reservation_repository_provider.dart';

final createReservationUseCaseProvider = Provider<CreateReservationUseCase>((ref) {
  return CreateReservationUseCaseImpl(ref.read(reservationRepositoryProvider));
});