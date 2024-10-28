import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/search/data/models/search_model.dart';
import 'package:levy/features/search/domain/entities/search_entity.dart';

abstract class BusRepository {
  Future<List<BusEntity>> get({
    required SearchEntity search,
    bool isReturn = false,
  });
}
