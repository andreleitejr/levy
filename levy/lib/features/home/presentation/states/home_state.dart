import 'package:levy/core/theme/theme.dart';
import 'package:levy/features/address/address.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';
import 'package:levy/features/user/data/models/user_model.dart';
import 'package:levy/features/user/domain/entities/user_entity.dart';

final class HomeState implements GenericStateBase {
  final UserEntity? user;
  final AddressEntity? departureAddress;
  final AddressEntity? returnAddress;
  final String? departureTime;
  final String? returnTime;
  final ReservationEntity? reservation;

  @override
  final String errorMessage;

  @override
  final bool isLoading;

  const HomeState({
    this.user = const UserModel(),
    this.departureAddress,
    this.returnAddress,
    this.departureTime,
    this.returnTime,
    this.reservation,
    this.errorMessage = '',
    this.isLoading = false,
  });

  const HomeState.loading() : this(isLoading: true);

  const HomeState.success({
    UserEntity? user,
    ReservationEntity? reservation,
  }) : this(user: user, reservation: reservation);

  const HomeState.error(String message) : this(errorMessage: message);

  HomeState copyWith({
    UserEntity? user,
    AddressEntity? departureAddress,
    AddressEntity? returnAddress,
    String? departureTime,
    String? returnTime,
    String? errorMessage,
    bool? isLoading,
  }) {
    return HomeState(
      user: user ?? this.user,
      departureAddress: departureAddress ?? this.departureAddress,
      returnAddress: returnAddress ?? this.returnAddress,
      departureTime: departureTime ?? this.departureTime,
      returnTime: returnTime ?? this.returnTime,
      errorMessage: errorMessage ?? this.errorMessage,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
