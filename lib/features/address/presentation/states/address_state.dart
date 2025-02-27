import 'package:levy/features/address/domain/entities/address_entity.dart';
import 'package:levy/features/commons/theme/widgets/theme_widgets.dart';

final class AddressState implements GenericStateBase {
  final List<AddressEntity> data;

  @override
  final String errorMessage;

  @override
  final bool isLoading;


  const AddressState({
    this.data = const [],
    this.errorMessage = '',
    this.isLoading = false,
  });

  const AddressState.loading() : this(isLoading: true);
  const AddressState.success(List<AddressEntity> data) : this(data: data);
  const AddressState.error(String message) : this(errorMessage: message);
}
