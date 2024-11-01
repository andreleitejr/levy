import 'package:injectable/injectable.dart';
import 'package:levy/core/commons/domain/enums/inject_env.dart';
import 'package:levy/features/payment_method/data/datasources/payment_method_datasource.dart';
import 'package:levy/features/payment_method/data/models/payment_method_model.dart';
import 'package:levy/features/payment_method/external/payment_method_mock.dart';

@Injectable(as: PaymentMethodDataSource, env: [InjectEnv.mock])
final class PaymentMethodDataSourceMock implements PaymentMethodDataSource {
  @override
  Future<List<PaymentMethodModel>> get() async {
    return PaymentMethodMock.response.map<PaymentMethodModel>((address) {
      return PaymentMethodModel.fromJson(address);
    }).toList();
  }
}
