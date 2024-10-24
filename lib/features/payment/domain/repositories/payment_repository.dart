import 'package:levy/features/payment/domain/entities/payment_entity.dart';
import 'package:levy/features/payment/enums/payment_method_type.dart';

abstract class PaymentRepository {
  Future<PaymentEntity> processPayment({
    required String paymentId,
    required PaymentMethodType paymentMethod,
  });
}