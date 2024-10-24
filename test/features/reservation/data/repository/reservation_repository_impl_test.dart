import 'package:flutter_test/flutter_test.dart';
import 'package:levy/features/bus/data/models/bus_model.dart';
import 'package:levy/features/reservation/data/datasources/reservation_datasource.dart';
import 'package:levy/features/reservation/data/models/reservation_model.dart';
import 'package:levy/features/reservation/data/repositories/reservation_repository_impl.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';
import 'package:mocktail/mocktail.dart';

class ReservationDataSourceMock extends Mock implements ReservationDataSource {}

void main() {
  late ReservationDataSourceMock mockDataSource;
  late ReservationRepositoryImpl repository;

  setUp(() {
    mockDataSource = ReservationDataSourceMock();
    repository = ReservationRepositoryImpl(mockDataSource);
  });

  group('ReservationRepositoryImpl - get', () {
    final bus = BusModel(
      id: '1',
      brand: 'Brand',
      model: 'Model',
      capacity: 30,
      isAccessible: true,
    );

    final expectedReservation = ReservationModel(
      reservationId: 'reservation_001',
      userId: 'user_001',
      paymentId: 'payment_001',
      date: DateTime.now().toString(),
      departureBus: bus,
      returnBus: bus,
    );

    test('should return List<ReservationEntity> when the call is successful',
        () async {
      when(() => mockDataSource.createReservation(expectedReservation))
          .thenAnswer((_) async => expectedReservation);

      final result = await repository.createReservation(expectedReservation);

      expect(result, isA<ReservationEntity>());
      expect(result, expectedReservation);

      verify(() => mockDataSource.createReservation(expectedReservation))
          .called(1);
    });

    test('should throw an exception when the call fails', () async {
      when(() => mockDataSource.createReservation(expectedReservation))
          .thenThrow(Exception('Generic Error'));

      final call = repository.createReservation(expectedReservation);

      expect(call, throwsA(isA<Exception>()));

      verify(() => mockDataSource.createReservation(expectedReservation)).called(1);
    });
  });
}
