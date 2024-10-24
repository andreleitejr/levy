import 'package:levy/features/payment/domain/entities/payment_entity.dart';
import 'package:levy/features/payment/enums/payment_method_type.dart';

abstract class ProcessPaymentUseCase {
  Future<PaymentEntity> call({
    required String transactionId,
    required PaymentMethodType paymentMethod,
  });
}