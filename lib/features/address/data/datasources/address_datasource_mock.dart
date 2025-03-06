import 'package:injectable/injectable.dart';
import 'package:levy/core/inject/inject_env.dart';
import 'package:levy/features/address/data/datasources/address_datasource.dart';
import 'package:levy/features/address/data/models/address_model.dart';
import 'package:levy/features/address/mock/address_mock.dart';

@Injectable(as: AddressDataSource, env: [InjectEnv.mock])
final class AddressDataSourceMock implements AddressDataSource {

  @override
  Future<List<AddressModel>> get() async {
    await Future.delayed(const Duration(milliseconds: 600));

    return AddressMock.response.map<AddressModel>((address) {
      return AddressModel.fromJson(address);
    }).toList();
  }
}
