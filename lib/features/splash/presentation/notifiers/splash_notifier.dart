import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';
import 'package:levy/features/reservation/domain/usecases/get_reservation_usecase.dart';
import 'package:levy/features/splash/presentation/states/splash_state.dart';
import 'package:levy/features/user/domain/entities/user_entity.dart';
import 'package:levy/features/user/domain/usecases/get_user_usecase.dart';
import 'package:levy/main.dart';

final class SplashNotifier extends StateNotifier<SplashState> {
  final GetUserUseCase _userUseCase;
  final GetReservationUseCase _reservationUseCase;

  SplashNotifier(
    this._userUseCase,
    this._reservationUseCase,
  ) : super(SplashState());

  Future<void> init() async {
    await Future.delayed(const Duration(milliseconds: 2000));

    final user = await _userUseCase();

    if (!getIt.isRegistered<UserEntity>()) {
      getIt.registerSingleton<UserEntity>(user);
    }

    final reservation = await _getUserReservation();

    state = SplashState.success(
      user: user,
      reservation: reservation,
      isLoaded: true,
    );
  }

  Future<ReservationEntity?> _getUserReservation() async {
    final user = getIt<UserEntity>();
    final reservation = await _reservationUseCase(user.id);

    return reservation;
  }
}
