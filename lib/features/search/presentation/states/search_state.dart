import 'package:equatable/equatable.dart';
import 'package:levy/features/address/domain/entities/address_entity.dart';
import 'package:levy/features/commons/widgets/state_builder.dart';
import 'package:levy/features/search/data/models/search_model.dart';
import 'package:levy/features/search/domain/entities/search_entity.dart';

final class SearchState extends Equatable implements GenericStateBase {
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

  const SearchState.loading()
      : departureAddress = null,
        returnAddress = null,
        departureTime = null,
        returnTime = null,
        errorMessage = null,
        isLoading = true;

  const SearchState.success()
      : departureAddress = null,
        returnAddress = null,
        departureTime = null,
        returnTime = null,
        errorMessage = null,
        isLoading = false;

  const SearchState.error(String message)
      : departureAddress = null,
        returnAddress = null,
        departureTime = null,
        returnTime = null,
        errorMessage = message,
        isLoading = false;

  bool get isValid {
    return departureAddress != null &&
        returnAddress != null &&
        departureTime != null &&
        returnTime != null;
  }

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

  @override
  List<Object?> get props =>
      [
        departureAddress,
        returnAddress,
        departureTime,
        returnTime,
        errorMessage,
        isLoading
      ];
}
