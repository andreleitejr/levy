import 'package:injectable/injectable.dart';
import 'package:levy/features/address/address.dart';

@Injectable(as: AddressRepository)
final class AddressRepositoryImpl implements AddressRepository {
  const AddressRepositoryImpl(this._datasource);

  final AddressDataSource _datasource;

  @override
  Future<List<AddressEntity>> get() async {
    return _datasource.get();
  }
}
