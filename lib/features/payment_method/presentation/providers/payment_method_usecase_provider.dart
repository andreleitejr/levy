import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/features/payment_method/domain/usecases/get_payment_method_usecase.dart';
import 'package:levy/features/payment_method/domain/usecases/get_payment_method_usecase_impl.dart';
import 'package:levy/features/payment_method/presentation/providers/payment_method_repository_provider.dart';

final paymentMethodUseCaseProvider = Provider<GetPaymentMethodUseCase>((ref) {
  return GetPaymentMethodUseCaseImpl(ref.read(paymentMethodRepositoryProvider));
});
