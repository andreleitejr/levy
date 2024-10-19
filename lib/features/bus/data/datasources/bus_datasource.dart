import 'package:levy/features/bus/data/models/bus_model.dart';

abstract class BusDataSource {
  Future<List<BusModel>> get();
}
