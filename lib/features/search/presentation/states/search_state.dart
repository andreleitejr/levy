import 'package:levy/features/address/domain/entities/address_entity.dart';
import 'package:levy/features/commons/widgets/state_builder.dart';
import 'package:levy/features/user/data/models/user_model.dart';
import 'package:levy/features/user/domain/entities/user_entity.dart';

final class SearchState implements GenericStateBase {
  final UserEntity user;
  final AddressEntity? departureAddress;
  final AddressEntity? returnAddress;
  final String? departureTime;
  final String? returnTime;

  @override
  final String? errorMessage;

  @override
  final bool isLoading;

  const SearchState({
    this.user = const UserModel(),
    this.departureAddress,
    this.returnAddress,
    this.departureTime,
    this.returnTime,
    this.errorMessage,
    this.isLoading = false,
  });

  const SearchState.loading() : this(isLoading: true);
  const SearchState.success(UserEntity user) : this(user: user);
  const SearchState.error(String message) : this(errorMessage: message);

  SearchState copyWith({
    UserEntity? user,
    AddressEntity? departureAddress,
    AddressEntity? returnAddress,
    String? departureTime,
    String? returnTime,
    String? errorMessage,
    bool? isLoading,
  }) {
    return SearchState(
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
