import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/payment_method/data/datasources/payment_method_datasource.dart';
import 'package:levy/features/payment_method/data/datasources/payment_method_datasource_mock.dart';

final paymentMethodDataSourceProvider = Provider<PaymentMethodDataSource>((ref) {
  return PaymentMethodDataSourceMock();
});
