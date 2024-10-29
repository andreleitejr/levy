import 'package:injectable/injectable.dart';
import 'package:levy/core/commons/domain/enums/inject_env.dart';
import 'package:levy/features/bus/data/datasources/bus_datasource.dart';
import 'package:levy/features/bus/data/models/bus_model.dart';
import 'package:levy/features/bus/external/bus_mock.dart';
import 'package:levy/features/search/domain/entities/search_entity.dart';

@Injectable(as: BusDataSource, env: [InjectEnv.mock])
final class BusDataSourceMock implements BusDataSource {
  @override
  Future<List<BusModel>> get({
    required SearchEntity search,
    bool isReturn = false,
  }) async {
    final buses =
        BusMock.response.map((busData) => BusModel.fromJson(busData)).toList();

    if (isReturn) {
      return buses.where((bus) {
        return bus.routes.any((route) =>
            route.origin.street == search.returnAddress.street &&
            route.departureTime.compareTo(search.returnTime) >= 0);
      }).toList();
    } else {
      return buses.where((bus) {
        return bus.routes.any((route) =>
            route.origin.street == search.departureAddress.street &&
            route.departureTime.compareTo(search.departureTime) >= 0);
      }).toList();
    }
  }
}
