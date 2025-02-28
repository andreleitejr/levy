import 'package:levy/features/address/address.dart';
import 'package:levy/features/route/domain/entities/route_entity.dart';
import 'package:mocktail/mocktail.dart';

import 'entities_mocks.dart';

final class RouteEntityMock extends Mock implements RouteEntity {
  @override
  String get id => 'route_1';

  @override
  String get name => 'Airport to Downtown';

  @override
  AddressEntity get origin => AddressEntityMock();

  @override
  AddressEntity get destination => AddressEntityMock();

  @override
  List<AddressEntity> get stops => [];

  @override
  double get distance => 12.0;

  @override
  String get duration => '25 minutes';

  @override
  String get departureTime => '05:00';

  @override
  String get arrivalTime => '06:25';

  @override
  bool get isActive => true;
}
