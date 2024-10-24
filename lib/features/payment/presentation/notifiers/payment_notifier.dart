import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/payment/domain/usecases/process_payment_usecase.dart';
import 'package:levy/features/payment/enums/payment_method_type.dart';
import 'package:levy/features/payment/presentation/states/payment_state.dart';

final class PaymentNotifier extends StateNotifier<PaymentState> {
  final ProcessPaymentUseCase _usecase;

  PaymentNotifier(this._usecase) : super(PaymentState.initial());

  Future<void> processPayment({
    required String transactionId,
    required PaymentMethodType paymentMethod,
  }) async {
    try {
      final payment = await _usecase(
        transactionId: transactionId,
        paymentMethod: paymentMethod,
      );

      if (payment.isSuccessful) {
        state = PaymentState.success(payment);
      } else {
        state = PaymentState.error('Payment failed');
      }
    } catch (e) {
      state = PaymentState.error('Failed to process payment: ${e.toString()}');
    }
  }
}
