import 'package:levy_shared_entities/entities.dart';
import 'package:mocktail/mocktail.dart';

import 'entities_mocks.dart';

final class SearchEntityMock extends Mock implements SearchEntity {
  @override
  AddressEntity get departureAddress => AddressEntityMock();

  @override
  AddressEntity get returnAddress  => AddressEntityMock();

  @override
  String get departureTime => '06:30';

  @override
  String get returnTime => '17:30';
}
