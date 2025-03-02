import 'package:injectable/injectable.dart';
import 'package:levy/features/payment/payment.dart';
import 'package:levy/features/payment_method/domain/entities/payment_method_entity.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';
import 'package:levy_core/core.dart';

@Injectable(as: PaymentDataSource, env: [InjectEnv.impl])
final class PaymentDataSourceImpl implements PaymentDataSource {
  @override
  Future<PaymentResult> processPayment({
    required ReservationEntity reservation,
    required PaymentMethodEntity method,
  }) async {
    return PaymentResult.success;
  }
}
