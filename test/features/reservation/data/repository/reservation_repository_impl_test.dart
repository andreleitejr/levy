import 'package:flutter_test/flutter_test.dart';
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

  group('ReservationRepositoryImpl - create', () {
    final expectedReservation = ReservationModel(
      reservationId: 'reservation_001',
      userId: 'user_001',
      paymentId: 'payment_001',
      date: DateTime.now().toString(),
      departureBusId: 'bus_001',
      returnBusId: 'bus_010',
    );

    test('should return true when the reservation is created successfully',
        () async {
      when(() => mockDataSource.createReservation(const ReservationModel()))
          .thenAnswer((_) async => true);

      final result =
          await repository.createReservation(const ReservationModel());

      expect(result, isA<bool>());
      expect(result, isTrue);

      verify(() => mockDataSource.createReservation(const ReservationModel()))
          .called(1);
    });

    test('should return false when the reservation creation fails', () async {
      when(() => mockDataSource.createReservation(expectedReservation))
          .thenAnswer((_) async => false);

      final result = await repository.createReservation(expectedReservation);

      expect(result, isFalse);

      verify(() => mockDataSource.createReservation(expectedReservation))
          .called(1);
    });
  });

  group('ReservationRepositoryImpl - get', () {
    test('should return ReservationEntity when the call is successful',
        () async {
      final expectedReservation =
      ReservationModel(
        reservationId: 'reservation_001',
        userId: 'user_001',
        paymentId: 'payment_001',
        date: DateTime.now().toString(),
        departureBusId: 'bus_001',
        returnBusId: 'bus_010',
      );

      when(() => mockDataSource
              .getReservation(expectedReservation.reservationId))
          .thenAnswer((_) async => expectedReservation);

      final result = await repository
          .getReservation(expectedReservation.reservationId);

      expect(result, isA<ReservationEntity>());
      expect(result, expectedReservation);

      verify(() => mockDataSource
          .getReservation(expectedReservation.reservationId)).called(1);
    });

    test('should throw an exception when the call fails', () async {
      const invalidId = 'invalid_id';
      when(() => mockDataSource.getReservation(invalidId))
          .thenThrow(Exception('Generic Error'));

      final call = repository.getReservation(invalidId);

      expect(call, throwsA(isA<Exception>()));

      verify(() => mockDataSource.getReservation(invalidId)).called(1);
    });
  });
}
