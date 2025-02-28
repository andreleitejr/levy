import 'package:levy/features/bus/bus.dart';
import 'package:levy/features/search/domain/entities/search_entity.dart';

abstract class BusRepository {
  Future<List<BusEntity>> get(SearchEntity search);
}
