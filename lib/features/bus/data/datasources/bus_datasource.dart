import 'package:levy/features/bus/data/models/bus_model.dart';
import 'package:levy/features/bus/enums/bus_result_type.dart';
import 'package:levy/features/search/domain/entities/search_entity.dart';

abstract class BusDataSource {
  Future<List<BusModel>> get({
    required SearchEntity search,
    required BusResultType resultType,
  });
}
