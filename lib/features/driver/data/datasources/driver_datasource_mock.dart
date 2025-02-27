import 'package:injectable/injectable.dart';
import 'package:levy/core/commons/domain/enums/inject_env.dart';
import 'package:levy/features/driver/data/datasources/driver_datasource.dart';
import 'package:levy/features/driver/data/models/driver_model.dart';
import 'package:levy/features/driver/mock/driver_mock.dart';

@Injectable(as: DriverDataSource, env: [InjectEnv.mock])
final class DriverDataSourceMock implements DriverDataSource {
  @override
  Future<DriverModel> get(String id) async {
    await Future.delayed(const Duration(milliseconds: 600));

    final drivers = DriverMock.response.map<DriverModel>((address) {
      return DriverModel.fromJson(address);
    }).toList();

    return drivers.firstWhere((driver) => driver.id == id);
  }
}
