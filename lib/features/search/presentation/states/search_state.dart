import 'package:equatable/equatable.dart';
import 'package:levy/features/address/domain/entities/address_entity.dart';

class SearchState extends Equatable {
  final AddressEntity? homeAddress;
  final AddressEntity? workAddress;
  final String? departureTime;
  final String? returnTime;

  const SearchState({
    this.homeAddress,
    this.workAddress,
    this.departureTime,
    this.returnTime,
  });

  bool get isValid =>
      homeAddress != null &&
          workAddress != null &&
          departureTime != null &&
          returnTime != null;

  SearchState copyWith({
    AddressEntity? homeAddress,
    AddressEntity? workAddress,
    String? departureTime,
    String? returnTime,
  }) {
    return SearchState(
      homeAddress: homeAddress ?? this.homeAddress,
      workAddress: workAddress ?? this.workAddress,
      departureTime: departureTime ?? this.departureTime,
      returnTime: returnTime ?? this.returnTime,
    );
  }

  @override
  List<Object?> get props => [homeAddress, workAddress, departureTime, returnTime];
}
