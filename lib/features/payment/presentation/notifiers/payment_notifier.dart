import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/payment/domain/usecases/process_payment_usecase.dart';
import 'package:levy/features/payment/enums/payment_result.dart';
import 'package:levy/features/payment/presentation/states/payment_state.dart';
import 'package:levy/features/payment_method/domain/entities/payment_method_entity.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';

final class PaymentNotifier extends StateNotifier<PaymentState> {
  final ProcessPaymentUseCase _usecase;

  PaymentNotifier(this._usecase) : super(PaymentState.loading());

  Future<void> init() async {
    try {
      await Future.delayed(const Duration(milliseconds: 500));

      state = PaymentState.initial();
    } catch (e) {
      state = PaymentState.error('Failed to init payment: ${e.toString()}');
    }
  }

  Future<PaymentResult> processPayment({
    required ReservationEntity reservation,
    required PaymentMethodEntity method,
  }) async {
    try {
      state = PaymentState.loading();

      return _usecase(
        reservation: reservation,
        method: method,
      );
    } catch (e) {
      state = PaymentState.error('Failed to process payment: ${e.toString()}');
      return PaymentResult.failed;
    }
  }

  void updatePaymentMethod(PaymentMethodEntity method) {
    state = state.copyWith(paymentMethod: method);
  }
}
