import 'package:injectable/injectable.dart';
import 'package:levy/core/inject/inject_env.dart';
import 'package:levy/features/address/data/datasources/address_datasource.dart';
import 'package:levy/features/address/data/models/address_model.dart';

@Injectable(as: AddressDataSource, env: [InjectEnv.impl])
final class AddressDataSourceImpl implements AddressDataSource {
  @override
  Future<List<AddressModel>> get() async {
    return [];
  }
}
