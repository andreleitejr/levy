import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/payment_method/data/repositories/payment_method_repository_impl.dart';
import 'package:levy/features/payment_method/domain/repositories/payment_method_repository.dart';
import 'package:levy/features/payment_method/presentation/providers/payment_method_datasource_provider.dart';

final paymentMethodRepositoryProvider = Provider<PaymentMethodRepository>((ref) {
  return PaymentMethodRepositoryImpl(ref.read(paymentMethodDataSourceProvider));
});
