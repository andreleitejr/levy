import 'package:injectable/injectable.dart';
import 'package:levy/features/address/data/datasources/address_datasource.dart';
import 'package:levy/features/address/domain/entities/address_entity.dart';
import 'package:levy/features/address/domain/repositories/address_repository.dart';

@Injectable(as: AddressRepository)
final class AddressRepositoryImpl implements AddressRepository {
  const AddressRepositoryImpl(this._datasource);

  final AddressDataSource _datasource;

  @override
  Future<List<AddressEntity>> get() async {
    return _datasource.get();
  }
}
