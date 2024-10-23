import 'package:levy/features/payment/domain/entities/payment_entity.dart';
import 'package:levy/features/payment/enums/payment_method_type.dart';
import 'package:levy/features/payment/enums/payment_result.dart';

abstract class PaymentDataSource {
  Future<PaymentEntity> processPayment({
    required String transactionId,
    required PaymentMethodType paymentMethod,
  });
}
