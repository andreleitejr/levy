import 'package:injectable/injectable.dart';
import 'package:levy/features/driver/data/datasources/driver_datasource.dart';
import 'package:levy/features/driver/domain/entities/driver_entity.dart';
import 'package:levy/features/driver/domain/repositories/driver_repository.dart';

@Injectable(as: DriverRepository)
final class DriverRepositoryImpl implements DriverRepository {
  const DriverRepositoryImpl(this._datasource);

  final DriverDataSource _datasource;

  @override
  Future<DriverEntity> get(String id) async {
    return _datasource.get(id);
  }
}
