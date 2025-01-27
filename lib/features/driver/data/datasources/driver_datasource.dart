import 'package:levy/features/driver/data/models/driver_model.dart';

abstract class DriverDataSource {
  Future<DriverModel> get(String id);
}