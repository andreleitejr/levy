import 'package:flutter_test/flutter_test.dart';
import 'package:levy/features/reservation/data/datasources/reservation_datasource.dart';
import 'package:levy/features/reservation/data/models/reservation_model.dart';
import 'package:levy/features/reservation/data/repositories/reservation_repository_impl.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';
import 'package:mocktail/mocktail.dart';

final class ReservationDataSourceMock extends Mock implements ReservationDataSource {}

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
    );

    test('should return true when the reservation is created successfully',
        () async {
      when(() => mockDataSource.set(const ReservationModel()))
          .thenAnswer((_) async => true);

      final result =
          await repository.set(const ReservationModel());

      expect(result, isA<bool>());
      expect(result, isTrue);

      verify(() => mockDataSource.set(const ReservationModel()))
          .called(1);
    });

    test('should return false when the reservation creation fails', () async {
      when(() => mockDataSource.set(expectedReservation))
          .thenAnswer((_) async => false);

      final result = await repository.set(expectedReservation);

      expect(result, isFalse);

      verify(() => mockDataSource.set(expectedReservation))
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
      );

      when(() => mockDataSource
              .get(expectedReservation.reservationId))
          .thenAnswer((_) async => expectedReservation);

      final result = await repository
          .get(expectedReservation.reservationId);

      expect(result, isA<ReservationEntity>());
      expect(result, expectedReservation);

      verify(() => mockDataSource
          .get(expectedReservation.reservationId)).called(1);
    });

    test('should throw an exception when the call fails', () async {
      const invalidId = 'invalid_id';
      when(() => mockDataSource.get(invalidId))
          .thenThrow(Exception('Generic Error'));

      final call = repository.get(invalidId);

      expect(call, throwsA(isA<Exception>()));

      verify(() => mockDataSource.get(invalidId)).called(1);
    });
  });
}
