import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';
import 'package:levy/features/user/data/models/user_model.dart';
import 'package:levy/features/user/domain/entities/user_entity.dart';

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
