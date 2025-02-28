import 'package:levy/features/driver/driver.dart';

abstract class DriverRepository {
  Future<DriverEntity> get(String id);
}
