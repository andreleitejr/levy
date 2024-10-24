import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/search/data/models/search_model.dart';

abstract class BusRepository {
  Future<List<BusEntity>> get(SearchModel search);
}
