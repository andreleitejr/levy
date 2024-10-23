import 'package:injectable/injectable.dart';
import 'package:levy/features/payment/data/datasources/payment_datasource.dart';
import 'package:levy/features/payment/domain/entities/payment_entity.dart';
import 'package:levy/features/payment/domain/repositories/payment_repository.dart';
import 'package:levy/features/payment/enums/payment_method_type.dart';

@Injectable(as: PaymentRepository)
final class PaymentRepositoryImpl implements PaymentRepository {
  const PaymentRepositoryImpl(this._datasource);

  final PaymentDataSource _datasource;

  @override
  Future<PaymentEntity> processPayment({
    required String transactionId,
    required PaymentMethodType paymentMethod,
  }) async {
    return _datasource.processPayment(
      transactionId: transactionId,
      paymentMethod: paymentMethod,
    );
  }
}