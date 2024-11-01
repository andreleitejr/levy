import 'package:injectable/injectable.dart';
import 'package:levy/features/payment/domain/entities/payment_entity.dart';
import 'package:levy/features/payment/domain/repositories/payment_repository.dart';
import 'package:levy/features/payment/domain/usecases/process_payment_usecase.dart';
import 'package:levy/features/payment/enums/payment_method_type.dart';
import 'package:levy/features/payment/enums/payment_result.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';

@Injectable(as: ProcessPaymentUseCase)
final class ProcessPaymentUseCaseImpl implements ProcessPaymentUseCase {
  const ProcessPaymentUseCaseImpl(this._repository);

  final PaymentRepository _repository;

  @override
  Future<PaymentResult> call({
    required ReservationEntity reservation,
    required PaymentMethodType method,
  }) async {
    return _repository.processPayment(
      reservation: reservation,
      method: method,
    );
  }
}
