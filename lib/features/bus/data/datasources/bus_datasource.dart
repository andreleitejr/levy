import 'package:levy/features/bus/data/models/bus_model.dart';
import 'package:levy/features/search/data/models/search_model.dart';

abstract class BusDataSource {
  Future<List<BusModel>> get(SearchModel search);
}
