import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/payment/data/repositories/payment_repository_impl.dart';
import 'package:levy/features/payment/domain/repositories/payment_repository.dart';
import 'package:levy/features/payment/presentation/providers/payment_datasource_provider.dart';

final paymentRepositoryProvider = Provider<PaymentRepository>((ref) {
  return PaymentRepositoryImpl(ref.read(paymentDataSourceProvider));
});
