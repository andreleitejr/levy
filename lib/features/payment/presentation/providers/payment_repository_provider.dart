import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/payment/payment.dart';

final paymentRepositoryProvider = Provider<PaymentRepository>((ref) {
  return PaymentRepositoryImpl(ref.read(paymentDataSourceProvider));
});
