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

  group('ReservationRepositoryImpl - create', () {
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

    test('should return true when the reservation is created successfully', () async {
      when(() => mockDataSource.createReservation(expectedReservation))
          .thenAnswer((_) async => true); // Mocking the successful creation

      final result = await repository.createReservation(expectedReservation);

      expect(result, isTrue); // Expecting true for success

      verify(() => mockDataSource.createReservation(expectedReservation))
          .called(1);
    });

    test('should return false when the reservation creation fails', () async {
      when(() => mockDataSource.createReservation(expectedReservation))
          .thenAnswer((_) async => false); // Mocking the failure

      final result = await repository.createReservation(expectedReservation);

      expect(result, isFalse); // Expecting false for failure

      verify(() => mockDataSource.createReservation(expectedReservation))
          .called(1);
    });
  });

  group('ReservationRepositoryImpl - get', () {
    test('should return ReservationEntity when the call is successful', () async {
      final expectedReservation = [ReservationModel(
        reservationId: 'reservation_001',
        userId: 'user_001',
        paymentId: 'payment_001',
        date: DateTime.now().toString(),
        departureBus: BusModel(id: '1', brand: 'Brand', model: 'Model', capacity: 30, isAccessible: true),
        returnBus: BusModel(id: '1', brand: 'Brand', model: 'Model', capacity: 30, isAccessible: true),
      )];

      when(() => mockDataSource.getReservation(expectedReservation.first.reservationId))
          .thenAnswer((_) async => expectedReservation);

      final result = await repository.getReservation(expectedReservation.first.reservationId);

      expect(result, isA<ReservationEntity>());
      expect(result, expectedReservation);

      verify(() => mockDataSource.getReservation(expectedReservation.first.reservationId))
          .called(1);
    });

    test('should throw an exception when the call fails', () async {
      const invalidId = 'invalid_id';
      when(() => mockDataSource.getReservation(invalidId))
          .thenThrow(Exception('Generic Error'));

      // Chama o método do repositório e verifica se a exceção é lançada.
      final call = repository.getReservation(invalidId);

      expect(call, throwsA(isA<Exception>())); // Verifica se a exceção é lançada.

      verify(() => mockDataSource.getReservation(invalidId)).called(1);
    });
  });
}
