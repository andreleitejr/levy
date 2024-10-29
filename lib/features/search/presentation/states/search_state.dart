import 'package:levy/features/address/domain/entities/address_entity.dart';
import 'package:levy/features/commons/widgets/state_builder.dart';

final class SearchState implements GenericStateBase {
  final AddressEntity? departureAddress;
  final AddressEntity? returnAddress;
  final String? departureTime;
  final String? returnTime;

  @override
  final String? errorMessage;

  @override
  final bool isLoading;

  const SearchState({
    this.departureAddress,
    this.returnAddress,
    this.departureTime,
    this.returnTime,
    this.errorMessage,
    this.isLoading = false,
  });

  const SearchState.loading() : this(isLoading: true);
  const SearchState.success() : this();
  const SearchState.error(String message) : this(errorMessage: message);

  SearchState copyWith({
    AddressEntity? departureAddress,
    AddressEntity? returnAddress,
    String? departureTime,
    String? returnTime,
    String? errorMessage,
    bool? isLoading,
  }) {
    return SearchState(
      departureAddress: departureAddress ?? this.departureAddress,
      returnAddress: returnAddress ?? this.returnAddress,
      departureTime: departureTime ?? this.departureTime,
      returnTime: returnTime ?? this.returnTime,
      errorMessage: errorMessage ?? this.errorMessage,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
