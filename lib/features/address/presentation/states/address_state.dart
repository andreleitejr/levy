import 'package:equatable/equatable.dart';
import 'package:levy/features/address/domain/entities/address_entity.dart';

final class AddressState extends Equatable {
  final List<AddressEntity> addresses;
  final String? errorMessage;

  const AddressState({
    required this.addresses,
    this.errorMessage,
  });

  const AddressState.initial()
      : addresses = const [],
        errorMessage = null;

  const AddressState.error(String message)
      : addresses = const [],
        errorMessage = message;

  @override
  List<Object?> get props => [addresses, errorMessage];
}
