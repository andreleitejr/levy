import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/splash/presentation/states/splash_state.dart';
import 'package:levy/main.dart';
import 'package:levy_reservation/reservation.dart';
import 'package:levy_shared_entities/shared_entities.dart';
import 'package:levy_user/user.dart';

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
