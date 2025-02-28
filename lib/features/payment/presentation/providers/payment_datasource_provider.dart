import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/payment/payment.dart';

final paymentDataSourceProvider = Provider<PaymentDataSource>((ref) {
  return PaymentDataSourceMock();
});
