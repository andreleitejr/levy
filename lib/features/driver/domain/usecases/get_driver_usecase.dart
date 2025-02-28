import 'package:levy/features/driver/driver.dart';

abstract class GetDriverUseCase {
  Future<DriverEntity> call(String id);
}
