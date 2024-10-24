import 'package:injectable/injectable.dart';
import 'package:levy/core/commons/domain/enums/inject_env.dart';
import 'package:levy/features/bus/data/datasources/bus_datasource.dart';
import 'package:levy/features/bus/data/models/bus_model.dart';
import 'package:levy/features/bus/external/bus_mock.dart';
import 'package:levy/features/search/data/models/search_model.dart';

@Injectable(as: BusDataSource, env: [InjectEnv.mock])
final class BusDataSourceMock implements BusDataSource {
  @override
  Future<List<BusModel>> get({
    required SearchModel search,
    bool isReturn = false,
  }) async {
    final buses =
        BusMock.response.map((busData) => BusModel.fromJson(busData)).toList();

    if (isReturn) {
      return buses.where((bus) {
        return bus.routes.any((route) =>
            route.origin.street == search.workDeparture.address.street &&
            route.departureTime.compareTo(search.workDeparture.time) >= 0);
      }).toList();
    } else {
      return buses.where((bus) {
        return bus.routes.any((route) =>
            route.origin.street == search.homeDeparture.address.street &&
            route.departureTime.compareTo(search.homeDeparture.time) >= 0);
      }).toList();
    }
  }
}
