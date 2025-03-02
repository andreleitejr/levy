import 'package:injectable/injectable.dart';
import 'package:levy/features/payment_method/data/datasources/payment_method_datasource.dart';
import 'package:levy/features/payment_method/data/models/payment_method_model.dart';
import 'package:levy_core/core.dart';

@Injectable(as: PaymentMethodDataSource, env: [InjectEnv.impl])
final class PaymentMethodDataSourceImpl implements PaymentMethodDataSource {
  @override
  Future<List<PaymentMethodModel>> get() async {
    return [];
  }
}
