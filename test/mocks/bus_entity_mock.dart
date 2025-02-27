import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:levy/features/address/data/models/address_model.dart';
import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/commons/entities/amenity_entity.dart';
import 'package:levy/features/commons/mock/common_mock.dart';
import 'package:levy/features/commons/models/amenity_model.dart';
import 'package:levy/features/driver/domain/entities/driver_entity.dart';
import 'package:levy/features/route/data/models/route_model.dart';
import 'package:levy/features/route/domain/entities/route_entity.dart';
import 'package:levy/features/seat/data/models/seat_model.dart';
import 'package:levy/features/seat/domain/entities/seat_entity.dart';
import 'package:mocktail/mocktail.dart';

import 'entities_mocks.dart';

final class BusEntityMock extends Mock implements BusEntity {
  @override
  String get id => '1';

  @override
  String get image => 'bus_1';

  @override
  String get brand => 'Marcopolo';

  @override
  String get model => 'Paradiso G8 1800 D';

  @override
  String get year => '2022';

  @override
  String get color => 'Blue';

  @override
  int get capacity => 32;

  @override
  List<AmenityEntity> get amenities => [AmenityModel.fromJson(CommonMock.amenities.first)];

  @override
  String get licensePlate => 'PL8R4LYF';

  @override
  String get chassisNumber => 'CHS-1234567890';

  @override
  bool get isAccessible => true;

  @override
  DriverEntity get driver => DriverEntityMock();

  @override
  List<RouteEntity> get routes => [
        RouteModel(
          id: '2',
          name: 'Airport to Downtown',
          origin: AddressModel(
            name: 'Airport Rd',
            street: 'Airport Road',
            number: '123',
            city: 'Metropolis',
            state: 'NY',
            postalCode: '10001',
            country: 'USA',
            latitude: -23.5494011,
            longitude: -46.6571689,
          ),
          destination: AddressModel(
            name: 'Fifth Avenue',
            street: 'Fifth Ave',
            number: '321',
            city: 'Metropolis',
            state: 'NY',
            postalCode: '10002',
            country: 'USA',
            latitude: -23.5416714,
            longitude: -46.4501121,
          ),
          stops: [],
          distance: 12.0,
          duration: '25 minutes',
          departureTime: '05:00',
          arrivalTime: '06:25',
          isActive: true,
        ),
        RouteModel(
          id: '3',
          name: 'Downtown to Airport',
          origin: AddressModel(
            name: 'Main St',
            street: 'Main Street',
            number: '321',
            city: 'Metropolis',
            state: 'NY',
            postalCode: '10002',
            country: 'USA',
            latitude: -23.5416714,
            longitude: -46.4501121,
          ),
          destination: AddressModel(
            name: 'Airport Rd',
            street: 'Airport Road',
            number: '123',
            city: 'Metropolis',
            state: 'NY',
            postalCode: '10001',
            country: 'USA',
            latitude: -23.5494011,
            longitude: -46.6571689,
          ),
          stops: [],
          distance: 12.0,
          duration: '25 minutes',
          departureTime: '16:30',
          arrivalTime: '17:55',
          isActive: true,
        ),
      ];

  @override
  List<SeatEntity> get seats => [SeatModel.fromJson(CommonMock.seats.first)];

  @override
  LatLng get lastLocation => LatLng(0.0, 0.0);
}
