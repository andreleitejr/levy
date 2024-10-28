import 'package:levy/features/bus/data/models/bus_model.dart';
import 'package:levy/features/search/data/models/search_model.dart';
import 'package:levy/features/search/domain/entities/search_entity.dart';

abstract class BusDataSource {
  Future<List<BusModel>> get({
    required SearchEntity search,
    bool isReturn = false,
  });
}
