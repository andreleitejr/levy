import 'package:levy_shared_entities/entities.dart';

final class SplashState {
  final UserEntity user;
  final ReservationEntity? reservation;
  final bool isLoaded;

  const SplashState({
    this.user = const UserModel(),
    this.reservation,
    this.isLoaded = false,
  });

  const SplashState.success({
    required UserEntity user,
    ReservationEntity? reservation,
    required bool isLoaded,
  }) : this(user: user, reservation: reservation, isLoaded: isLoaded);
}
