import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/search/data/models/search_model.dart';

abstract class GetBusUseCase {
  Future<List<BusEntity>> call(SearchModel search,);
}
