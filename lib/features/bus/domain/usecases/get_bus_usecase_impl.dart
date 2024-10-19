import 'package:injectable/injectable.dart';
import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/bus/domain/repositories/bus_repository.dart';
import 'package:levy/features/bus/domain/usecases/get_bus_usecase.dart';
import 'package:levy/features/commons/entities/route_entity.dart';
import 'package:levy/features/search/domain/entities/search_entity.dart';

@Injectable(as: GetBusUseCase)
final class GetBusUseCaseImpl implements GetBusUseCase {
  const GetBusUseCaseImpl(this._repository);

  final BusRepository _repository;

  @override
  Future<List<BusEntity>> get(SearchEntity params) async {
    final buses = await _repository.get();

    final filteredBuses = buses.where((bus) {
      return bus.routes.any((route) {
        return _matchesSearchParams(route, params);
      });
    }).toList();

    return filteredBuses;
  }

  bool _matchesSearchParams(RouteEntity route, SearchEntity search) {
    final departureAddressMatch = route.origin.street.contains(search.departureAddress.street);

    return departureAddressMatch;
  }
}
