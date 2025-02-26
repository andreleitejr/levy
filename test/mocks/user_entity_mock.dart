import 'package:levy/features/address/domain/entities/address_entity.dart';
import 'package:levy/features/user/domain/entities/user_entity.dart';
import 'package:mocktail/mocktail.dart';

import 'entities_mocks.dart';

final class UserEntityMock extends Mock implements UserEntity {
  @override
  String get id => '001';

  @override
  String get name => 'John';

  @override
  String get lastName => 'Doe';

  @override
  int get age => 32;

  @override
  String get email => 'john.doe@levy.com';

  @override
  String get phoneNumber => '130090902032';

  @override
  String get birthday => '01/01/1900';

  @override
  String get image => 'driver_1';

  @override
  AddressEntity get address => AddressEntityMock();
}
