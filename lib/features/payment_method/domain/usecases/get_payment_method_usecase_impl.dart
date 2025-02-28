import 'package:injectable/injectable.dart';
import 'package:levy/features/payment_method/domain/entities/payment_method_entity.dart';
import 'package:levy/features/payment_method/domain/repositories/payment_method_repository.dart';
import 'package:levy/features/payment_method/domain/usecases/get_payment_method_usecase.dart';

@Injectable(as: GetPaymentMethodUseCase)
final class GetPaymentMethodUseCaseImpl implements GetPaymentMethodUseCase {
  const GetPaymentMethodUseCaseImpl(this._repository);

  final PaymentMethodRepository _repository;

  @override
  Future<List<PaymentMethodEntity>> call() async {
    return _repository.get();
  }
}
