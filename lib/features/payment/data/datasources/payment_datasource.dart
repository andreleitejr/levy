import 'package:levy/features/payment/data/models/payment_model.dart';
import 'package:levy/features/payment/enums/payment_method_type.dart';

abstract class PaymentDataSource {
  Future<PaymentModel> processPayment({
    required String paymentId,
    required PaymentMethodType paymentMethod,
  });
}
