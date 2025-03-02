import 'package:injectable/injectable.dart';
import 'package:levy/features/driver/data/datasources/driver_datasource.dart';
import 'package:levy/features/driver/data/models/driver_model.dart';
import 'package:levy_core/core.dart';

@Injectable(as: DriverDataSource, env: [InjectEnv.impl])
final class DriverDataSourceImpl implements DriverDataSource {
  @override
  Future<DriverModel> get(String id) async {
    return DriverModel();
  }
}
