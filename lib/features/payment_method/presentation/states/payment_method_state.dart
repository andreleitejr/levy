import 'package:levy/features/payment_method/domain/entities/payment_method_entity.dart';
import 'package:levy_core/core.dart';

final class PaymentMethodState implements GenericStateBase {
  final List<PaymentMethodEntity> data;

  @override
  final String errorMessage;

  @override
  final bool isLoading;


  const PaymentMethodState({
    this.data = const [],
    this.errorMessage = '',
    this.isLoading = false,
  });

  const PaymentMethodState.loading() : this(isLoading: true);
  const PaymentMethodState.success(List<PaymentMethodEntity> data) : this(data: data);
  const PaymentMethodState.error(String message) : this(errorMessage: message);
}
