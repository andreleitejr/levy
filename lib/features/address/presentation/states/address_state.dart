import 'package:equatable/equatable.dart';
import 'package:levy/features/address/domain/entities/address_entity.dart';
import 'package:levy/features/commons/widgets/state_builder.dart';

final class AddressState extends Equatable implements GenericStateBase {
  final List<AddressEntity>? data;
  @override
  final String? errorMessage;
  @override
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
