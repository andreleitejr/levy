import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/payment/domain/usecases/process_payment_usecase.dart';
import 'package:levy/features/payment/domain/usecases/process_payment_usecase_impl.dart';
import 'package:levy/features/payment/presentation/providers/payment_repository_provider.dart';

final processPaymentUseCaseProvider = Provider<ProcessPaymentUseCase>((ref) {
  return ProcessPaymentUseCaseImpl(ref.read(paymentRepositoryProvider));
});
