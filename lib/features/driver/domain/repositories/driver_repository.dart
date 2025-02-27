import 'package:levy/features/driver/domain/entities/driver_entity.dart';

abstract class DriverRepository {
  Future<DriverEntity> get(String id);
}
