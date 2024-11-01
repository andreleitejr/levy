import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/payment/domain/usecases/process_payment_usecase.dart';
import 'package:levy/features/payment/enums/payment_method_type.dart';
import 'package:levy/features/payment/enums/payment_result.dart';
import 'package:levy/features/payment/presentation/states/payment_state.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';

final class PaymentNotifier extends StateNotifier<PaymentState> {
  final ProcessPaymentUseCase _usecase;

  PaymentNotifier(this._usecase) : super(PaymentState.loading());

  Future<void> init(ReservationEntity reservation) async {
    try {
      await Future.delayed(const Duration(milliseconds: 500));

      state = PaymentState.initial(reservation);
    } catch (e) {
      state = PaymentState.error('Failed to init payment: ${e.toString()}');
    }
  }

  Future<void> processPayment({
    required ReservationEntity reservation,
    required PaymentMethodType method,
  }) async {
    try {
      final result = await _usecase(
        reservation: reservation,
        method: method,
      );

      if (result == PaymentResult.success) {
        state = PaymentState.success(result);
      } else {
        state = PaymentState.error('Payment failed');
      }
    } catch (e) {
      state = PaymentState.error('Failed to process payment: ${e.toString()}');
    }
  }
}
