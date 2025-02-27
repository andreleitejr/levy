import 'package:levy/features/driver/domain/entities/driver_entity.dart';

abstract class GetDriverUseCase {
  Future<DriverEntity> call(String id);
}
