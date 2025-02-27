import 'package:levy/features/payment_method/domain/entities/payment_method_entity.dart';
import 'package:mocktail/mocktail.dart';

final class PaymentMethodEntityMock extends Mock implements PaymentMethodEntity {
  @override
  String get methodType => 'Credit Card';

  @override
  String get brand => 'Visa';

  @override
  String get image => 'visa_image';

  @override
  String get cardHolderName => 'John Doe';

  @override
  String get cardNumber => '4111111111111111';

  @override
  String get expiryDate => '12/25';

  @override
  String get cvv => '123';

  @override
  String get currency => 'USD';

  @override
  String get billingAddress => '123 Main St, Metropolis';

  @override
  bool get preferred => true;
}
