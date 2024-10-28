import 'package:equatable/equatable.dart';
import 'package:levy/features/payment/domain/entities/payment_entity.dart';

class PaymentState extends Equatable {
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

  @override
  List<Object?> get props => [data, errorMessage];
}
