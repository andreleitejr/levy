import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/payment/data/datasources/payment_datasource.dart';
import 'package:levy/features/payment/data/datasources/payment_datasource_mock.dart';

final paymentDataSourceProvider = Provider<PaymentDataSource>((ref) {
  return PaymentDataSourceMock();
});
