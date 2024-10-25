import 'package:equatable/equatable.dart';
import 'package:levy/features/address/domain/entities/address_entity.dart';

final class AddressState extends Equatable {
  final List<AddressEntity>? data;
  final String? errorMessage;
  final bool isLoading;

  const AddressState({
    this.data,
    this.errorMessage,
    this.isLoading = false,
  });

  const AddressState.loading()
      : data = null,
        errorMessage = null,
        isLoading = true;

  const AddressState.success(List<AddressEntity> value)
      : data = value,
        errorMessage = null,
        isLoading = false;

  const AddressState.error(String message)
      : data = null,
        errorMessage = message,
        isLoading = false;

  @override
  List<Object?> get props => [data, errorMessage, isLoading];
}
