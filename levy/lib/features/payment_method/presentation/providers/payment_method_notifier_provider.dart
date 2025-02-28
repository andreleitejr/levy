import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/payment_method/presentation/notifiers/payment_method_notifier.dart';
import 'package:levy/features/payment_method/presentation/providers/payment_method_usecase_provider.dart';
import 'package:levy/features/payment_method/presentation/states/payment_method_state.dart';

final paymentMethodNotifierProvider = StateNotifierProvider<PaymentMethodNotifier, PaymentMethodState>((ref) {
  return PaymentMethodNotifier(ref.read(paymentMethodUseCaseProvider));
});
