import 'package:injectable/injectable.dart';
import 'package:levy/core/commons/domain/enums/inject_env.dart';
import 'package:levy/features/bus/data/datasources/bus_datasource.dart';
import 'package:levy/features/bus/data/models/bus_model.dart';
import 'package:levy/features/bus/external/bus_mock.dart';
import 'package:levy/features/search/domain/entities/search_entity.dart';

@Injectable(as: BusDataSource, env: [InjectEnv.mock])
final class BusDataSourceMock implements BusDataSource {
  @override
  Future<List<BusModel>> get(SearchEntity search) async {
    final buses = BusMock.response.map((bus) => BusModel.fromJson(bus)).toList();

    Duration parseTime(String time) {
      final parts = time.split(':');
      return Duration(hours: int.parse(parts[0]), minutes: int.parse(parts[1]));
    }

    final homeDepartureTime = parseTime(search.homeDeparture.time);
    final workDepartureTime = parseTime(search.workDeparture.time);

    final homeDepartureStartTime = homeDepartureTime - Duration(minutes: 30);
    final homeDepartureEndTime = homeDepartureTime + Duration(minutes: 30);

    final workReturnStartTime = workDepartureTime - Duration(minutes: 30);
    final workReturnEndTime = workDepartureTime + Duration(minutes: 30);

    final outboundBuses = buses.where((bus) {
      final route = bus.routes.first;
      final busDepartureTime = parseTime(route.departureTime);

      return busDepartureTime >= homeDepartureStartTime &&
          busDepartureTime <= homeDepartureEndTime &&
          route.origin.street == search.homeDeparture.address.street &&
          route.origin.city == search.homeDeparture.address.city &&
          route.origin.state == search.homeDeparture.address.state &&
          route.origin.postalCode == search.homeDeparture.address.postalCode &&
          route.origin.country == search.homeDeparture.address.country;
    }).toList();

    final returnBuses = buses.where((bus) {
      final route = bus.routes.last;
      final busReturnTime = parseTime(route.departureTime);

      return busReturnTime >= workReturnStartTime &&
          busReturnTime <= workReturnEndTime &&
          route.destination.street == search.workDeparture.address.street &&
          route.destination.city == search.workDeparture.address.city &&
          route.destination.state == search.workDeparture.address.state &&
          route.destination.postalCode == search.workDeparture.address.postalCode &&
          route.destination.country == search.workDeparture.address.country;
    }).toList();

    final List<BusModel> selectedBuses = [];
    if (outboundBuses.isNotEmpty) selectedBuses.add(outboundBuses.first);
    if (returnBuses.isNotEmpty) selectedBuses.add(returnBuses.first);

    return selectedBuses;
  }
}
