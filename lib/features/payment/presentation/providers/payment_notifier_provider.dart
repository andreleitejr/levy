
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/payment/presentation/notifiers/payment_notifier.dart';
import 'package:levy/features/payment/presentation/providers/payment_usecase_provider.dart';
import 'package:levy/features/payment/presentation/states/payment_state.dart';

final paymentNotifierProvider = StateNotifierProvider<PaymentNotifier, PaymentState>((ref) {
  return PaymentNotifier(ref.read(processPaymentUseCaseProvider));
});
