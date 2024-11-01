import 'package:levy/features/payment/domain/entities/payment_entity.dart';
import 'package:levy/features/payment/enums/payment_method_type.dart';
import 'package:levy/features/payment/enums/payment_result.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';

abstract class PaymentRepository {
  Future<PaymentResult> processPayment({
    required ReservationEntity reservation,
    required PaymentMethodType method,
  });
}