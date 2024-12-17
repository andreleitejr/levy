import 'package:levy/features/bus/data/models/bus_model.dart';
import 'package:levy/features/search/domain/entities/search_entity.dart';

abstract class BusDataSource {
  Future<List<BusModel>> get({
    SearchEntity? search,
    bool isReturn = false,
  });
}
