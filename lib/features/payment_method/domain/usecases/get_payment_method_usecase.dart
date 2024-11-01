import 'package:levy/features/payment_method/domain/entities/payment_method_entity.dart';

abstract class GetPaymentMethodUseCase {
  Future<List<PaymentMethodEntity>> call();
}
