import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:levy/features/address/data/models/address_model.dart';
import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/commons/entities/amenity_entity.dart';
import 'package:levy/features/commons/external/common_mock.dart';
import 'package:levy/features/commons/models/amenity_model.dart';
import 'package:levy/features/commons/widgets/theme_error_page.dart';
import 'package:levy/features/driver/domain/entities/driver_entity.dart';
import 'package:levy/features/payment/data/datasources/payment_datasource.dart';
import 'package:levy/features/payment/domain/usecases/process_payment_usecase.dart';
import 'package:levy/features/payment/enums/payment_result.dart';
import 'package:levy/features/payment/presentation/pages/payment_page.dart';
import 'package:levy/features/payment_method/domain/entities/payment_method_entity.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';
import 'package:levy/features/route/data/models/route_model.dart';
import 'package:levy/features/route/domain/entities/route_entity.dart';
import 'package:levy/features/seat/data/models/seat_model.dart';
import 'package:levy/features/seat/domain/entities/seat_entity.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers/golden_test_helper.dart';

final class PaymentDataSourceMock extends Mock implements PaymentDataSource {}

final class ProcessPaymentUseCaseMock extends Mock implements ProcessPaymentUseCase {}

void main() {
  late PaymentDataSourceMock paymentDataSourceMock;
  late ProcessPaymentUseCaseMock processPaymentUseCaseMock;

  late ReservationEntity reservationMock;
  late PaymentMethodEntity paymentMethodMock;
  late BusEntity busMock;

  setUpAll(() {
    paymentDataSourceMock = PaymentDataSourceMock();
    processPaymentUseCaseMock = ProcessPaymentUseCaseMock();

    reservationMock = ReservationEntityMock();
    paymentMethodMock = PaymentMethodEntityMock();
    busMock = BusEntityMock();

    GetIt.instance.registerFactory<PaymentDataSource>(() => paymentDataSourceMock);
    GetIt.instance.registerFactory<ProcessPaymentUseCase>(() => processPaymentUseCaseMock);
  });

  group('Payment Page Golden Test', () {
    testWidgets('Payment Page Error', (tester) async {
      final errorMessage = 'Failed to load payments';

      when(() => processPaymentUseCaseMock(reservation: reservationMock, method: paymentMethodMock)).thenThrow(Exception(errorMessage));

      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: ThemeErrorWidget(
          message: errorMessage,
        ),
        testName: 'PaymentError',
      );
    });

    testWidgets('Payment Page Success', (tester) async {
      final c = Completer<PaymentResult>();

      when(() => paymentDataSourceMock.processPayment(
        reservation: reservationMock,
        method: paymentMethodMock,
      )).thenAnswer((_) async {
        return c.future;
      });

      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: PaymentPage(
          departureBus: busMock,
          returnBus: busMock,
        ),
        testName: 'PaymentSuccess',
      );

      c.complete(PaymentResult.success);
    });
  });
}

class ReservationEntityMock extends Mock implements ReservationEntity {
  @override
  String get reservationId => 'reservation_001';
  @override
  String get userId => 'user_001';
  @override
  String get paymentId => 'payment_001';
  @override
  String get date => '2023-10-10';
  @override
  BusEntity? get departureBus => BusEntityMock();
  @override
  BusEntity? get returnBus => BusEntityMock();
}

class PaymentMethodEntityMock extends Mock implements PaymentMethodEntity {
  @override
  String get methodType => 'Credit Card';
  @override
  String get brand => 'Visa';
  @override
  String get image => 'visa_image';
  @override
  String get cardHolderName => 'John Doe';
  @override
  String get cardNumber => '4111111111111111';
  @override
  String get expiryDate => '12/25';
  @override
  String get cvv => '123';
  @override
  String get currency => 'USD';
  @override
  String get billingAddress => '123 Main St, Metropolis';
  @override
  bool get preferred => true;
}

class BusEntityMock extends Mock implements BusEntity {
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


class DriverEntityMock extends Mock implements DriverEntity {
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