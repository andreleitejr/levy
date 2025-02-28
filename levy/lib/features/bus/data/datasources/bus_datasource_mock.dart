import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:levy/core/inject/inject_env.dart';
import 'package:levy/features/bus/bus.dart';
import 'package:levy/features/search/domain/entities/search_entity.dart';

@Injectable(as: BusDataSource, env: [InjectEnv.mock])
final class BusDataSourceMock implements BusDataSource {
  @override
  Future<List<BusModel>> get(SearchEntity search) async {
    await Future.delayed(const Duration(milliseconds: 600));

    final buses = BusMock.response.map((busData) {
      return BusModel.fromJson(busData);
    }).toList();

    final DateFormat format = DateFormat("HH:mm");

    return buses.where((bus) {
      final departureBus = bus.routes.first;
      final returnBus = bus.routes.first;

      final departureBusTime = format.parse(departureBus.departureTime);
      final returnBusTime = format.parse(returnBus.departureTime);
      final searchDepartureTime = format.parse(search.departureTime);
      final searchReturnTime = format.parse(search.returnTime);

      return departureBus.origin.name == search.departureAddress.name &&
              departureBusTime.isAfter(searchDepartureTime) ||
          returnBus.origin.name == search.returnAddress.name &&
              returnBusTime.isAfter(searchReturnTime);
    }).toList();
  }
}
