import 'package:levy/features/payment/domain/entities/payment_entity.dart';

class PaymentState {
  final PaymentEntity? data;
  final String? errorMessage;

  const PaymentState({
    this.data,
    this.errorMessage,
  });

  const PaymentState.initial()
      : data = null,
        errorMessage = null;

  const PaymentState.success(PaymentEntity value)
      : data = value,
        errorMessage = null;

  const PaymentState.error(String message)
      : data = null,
        errorMessage = message;
}
