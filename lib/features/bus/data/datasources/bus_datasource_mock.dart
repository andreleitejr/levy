import 'package:injectable/injectable.dart';
import 'package:levy/features/bus/data/datasources/bus_datasource.dart';
import 'package:levy/features/bus/data/models/bus_model.dart';
import 'package:levy/features/bus/external/bus_mock.dart';
import 'package:levy/core/commons/domain/enums/inject_env.dart';

@Injectable(as: BusDataSource, env: [InjectEnv.mock])
final class BusDataSourceMock implements BusDataSource {
  @override
  Future<List<BusModel>> get() async {
    return BusMock.response.map<BusModel>((bus) {
      return BusModel.fromJson(bus);
    }).toList();
  }
}
