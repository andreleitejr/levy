import 'package:injectable/injectable.dart';
import 'package:levy/features/bus/data/datasources/bus_datasource.dart';
import 'package:levy/features/bus/data/models/bus_model.dart';
import 'package:levy/features/bus/enums/bus_result_type.dart';
import 'package:levy/features/bus/external/bus_mock.dart';
import 'package:levy/core/commons/domain/enums/inject_env.dart';
import 'package:levy/features/search/domain/entities/search_entity.dart';

@Injectable(as: BusDataSource, env: [InjectEnv.mock])
final class BusDataSourceMock implements BusDataSource {
  @override
  Future<List<BusModel>> get({
    required SearchEntity search,
    required BusResultType resultType,
  }) async {
    List<BusModel> buses;

    if (resultType == BusResultType.home) {
      buses = BusMock.home.map((bus) => BusModel.fromJson(bus)).toList();
    } else {
      buses = BusMock.work.map((bus) => BusModel.fromJson(bus)).toList();
    }

    final filteredBuses = buses.where((bus) {
      return bus.routes.any((route) {
        return resultType == BusResultType.home
            ? route.origin.street.contains(search.homeAddress.street)
            : route.origin.street.contains(search.workAddress.street);
      });
    }).toList();

    return filteredBuses;
  }
}
