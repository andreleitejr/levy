import 'package:levy_shared_entities/entities.dart';
import 'package:mocktail/mocktail.dart';

final class DriverEntityMock extends Mock implements DriverEntity {
  @override
  String get id => '1';

  @override
  String get image => 'driver_1';

  @override
  String get name => 'John Doe';

  @override
  String get birthday => '1985-05-15';

  @override
  String get licenseNumber => 'ABCD123456';

  @override
  String get licenseType => 'B';

  @override
  int get experienceYears => 5;
}
