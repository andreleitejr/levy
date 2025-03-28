import 'package:levy/features/payment/enums/payment_result.dart';
import 'package:levy/features/payment_method/domain/entities/payment_method_entity.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';

abstract class ProcessPaymentUseCase {
  Future<PaymentResult> call({
    required ReservationEntity reservation,
    required PaymentMethodEntity method,
  });
}