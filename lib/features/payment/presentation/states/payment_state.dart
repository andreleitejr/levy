import 'package:levy/features/commons/widgets/state_builder.dart';
import 'package:levy/features/payment/domain/entities/payment_entity.dart';
import 'package:levy/features/payment/enums/payment_method_type.dart';
import 'package:levy/features/payment/enums/payment_result.dart';

class PaymentState implements GenericStateBase {
  final PaymentResult? data;
  final String? paymentId;
  final PaymentMethodType? paymentMethodType;

  @override
  final String? errorMessage;

  @override
  final bool isLoading;

  const PaymentState({
    this.data,
    this.paymentId,
    this.paymentMethodType,
    this.errorMessage,
    this.isLoading = false,
  });

  const PaymentState.loading() : this(isLoading: true);
  const PaymentState.initial() : this();
  const PaymentState.success(PaymentResult data) : this(data: data);
  const PaymentState.error(String message) : this(errorMessage: message);
}
