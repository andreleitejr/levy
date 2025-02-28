import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/payment/payment.dart';

final processPaymentUseCaseProvider = Provider<ProcessPaymentUseCase>((ref) {
  return ProcessPaymentUseCaseImpl(ref.read(paymentRepositoryProvider));
});
