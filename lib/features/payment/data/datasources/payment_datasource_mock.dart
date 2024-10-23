import 'package:injectable/injectable.dart';
import 'package:levy/core/commons/domain/enums/inject_env.dart';
import 'package:levy/features/payment/data/datasources/payment_datasource.dart';
import 'package:levy/features/payment/data/models/payment_model.dart';
import 'package:levy/features/payment/domain/entities/payment_entity.dart';
import 'package:levy/features/payment/enums/payment_method_type.dart';
import 'package:levy/features/payment/external/payment_mock.dart';

@Injectable(as: PaymentDataSource, env: [InjectEnv.mock])
final class PaymentDataSourceMock implements PaymentDataSource {
  @override
  Future<PaymentEntity> processPayment({
    required String transactionId,
    required PaymentMethodType paymentMethod,
  }) async {
    return PaymentModel.fromJson(PaymentMock.response);
  }
}
