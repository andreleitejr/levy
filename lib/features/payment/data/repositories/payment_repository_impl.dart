import 'package:injectable/injectable.dart';
import 'package:levy/features/payment/data/datasources/payment_datasource.dart';
import 'package:levy/features/payment/domain/repositories/payment_repository.dart';
import 'package:levy/features/payment/enums/payment_result.dart';
import 'package:levy/features/payment_method/domain/entities/payment_method_entity.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';

@Injectable(as: PaymentRepository)
final class PaymentRepositoryImpl implements PaymentRepository {
  const PaymentRepositoryImpl(this._datasource);

  final PaymentDataSource _datasource;

  @override
  Future<PaymentResult> processPayment({
    required ReservationEntity reservation,
    required PaymentMethodEntity method,
  }) async {
    return _datasource.processPayment(
      reservation: reservation,
      method: method,
    );
  }
}
