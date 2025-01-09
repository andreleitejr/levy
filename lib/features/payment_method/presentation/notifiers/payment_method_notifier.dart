import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/payment_method/domain/usecases/get_payment_method_usecase.dart';
import 'package:levy/features/payment_method/presentation/states/payment_method_state.dart';

final class PaymentMethodNotifier extends StateNotifier<PaymentMethodState> {
  final GetPaymentMethodUseCase _usecase;

  PaymentMethodNotifier(this._usecase) : super(const PaymentMethodState.loading());

  Future<void> init() async {
    try {
      final result = await _usecase();

      state = PaymentMethodState.success(result);
    } catch (e) {
      state = PaymentMethodState.error('Failed to load payment_methods: ${e.toString()}');
    }
  }
}
