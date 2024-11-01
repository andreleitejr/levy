import 'package:injectable/injectable.dart';
import 'package:levy/core/commons/domain/enums/inject_env.dart';
import 'package:levy/features/payment/data/datasources/payment_datasource.dart';
import 'package:levy/features/payment/data/models/payment_model.dart';
import 'package:levy/features/payment/enums/payment_method_type.dart';
import 'package:levy/features/payment/enums/payment_result.dart';
import 'package:levy/features/payment/external/payment_mock.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';

@Injectable(as: PaymentDataSource, env: [InjectEnv.mock])
final class PaymentDataSourceMock implements PaymentDataSource {
  @override
  Future<PaymentResult> processPayment({
    required ReservationEntity reservation,
    required PaymentMethodType method,
  }) async {
    return PaymentResult.success;
  }
}
