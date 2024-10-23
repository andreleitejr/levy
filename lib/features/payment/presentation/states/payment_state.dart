import 'package:equatable/equatable.dart';
import 'package:levy/features/payment/domain/entities/payment_entity.dart';
import 'package:levy/features/payment/enums/payment_result.dart';

class PaymentState extends Equatable {
  final PaymentEntity? payment;
  final String? errorMessage;

  const PaymentState({
    this.payment,
    this.errorMessage,
  });

  const PaymentState.initial()
      : payment = null,
        errorMessage = null;

  const PaymentState.success(PaymentEntity payment)
      : payment = payment,
        errorMessage = null;

  const PaymentState.error(String message)
      : payment = null,
        errorMessage = message;

  @override
  List<Object?> get props => [payment, errorMessage];
}
