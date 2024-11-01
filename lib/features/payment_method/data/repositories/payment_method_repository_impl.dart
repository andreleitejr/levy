import 'package:injectable/injectable.dart';
import 'package:levy/features/payment_method/data/datasources/payment_method_datasource.dart';
import 'package:levy/features/payment_method/domain/entities/payment_method_entity.dart';
import 'package:levy/features/payment_method/domain/repositories/payment_method_repository.dart';

@Injectable(as: PaymentMethodRepository)
final class PaymentMethodRepositoryImpl implements PaymentMethodRepository {
  const PaymentMethodRepositoryImpl(this._datasource);

  final PaymentMethodDataSource _datasource;

  @override
  Future<List<PaymentMethodEntity>> get() async {
    return _datasource.get();
  }
}
