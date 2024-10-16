import 'package:levy/apps_provisory/bus/data/models/bus_model.dart';

abstract class BusDataSource {
  Future<List<BusModel>> get();
  Future<void> add(BusModel bus);
  Future<void> edit(BusModel bus);
}
