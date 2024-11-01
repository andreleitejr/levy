import 'package:flutter_test/flutter_test.dart';
import 'package:levy/features/bus/data/models/bus_model.dart';
import 'package:levy/features/payment/data/datasources/payment_datasource.dart';
import 'package:levy/features/payment/data/models/payment_model.dart';
import 'package:levy/features/payment/data/repositories/payment_repository_impl.dart';
import 'package:levy/features/payment/domain/entities/payment_entity.dart';
import 'package:levy/features/payment/enums/payment_method_type.dart';
import 'package:levy/features/payment/enums/payment_result.dart';
import 'package:levy/features/reservation/data/models/reservation_model.dart';
import 'package:mocktail/mocktail.dart';

class PaymentDataSourceMock extends Mock implements PaymentDataSource {}

void main() {
  late PaymentDataSourceMock mockDataSource;
  late PaymentRepositoryImpl repository;

  setUp(() {
    mockDataSource = PaymentDataSourceMock();
    repository = PaymentRepositoryImpl(mockDataSource);
  });

  group('PaymentRepositoryImpl - get', () {
    final bus = BusModel(
        id: '1',
        brand: 'Brand',
        model: 'Model',
        capacity: 30,
        isAccessible: true);

    final reservation = ReservationModel(
      userId: 'user_001',
      paymentId: '',
      date: DateTime.now().toString(),
      departureBus: bus,
      returnBus: bus,
    );

    test('should return List<PaymentEntity> when the call is successful',
        () async {
      when(() => mockDataSource.processPayment(
            reservation: reservation,
            method: PaymentMethodType.creditCard,
          )).thenAnswer((_) async => PaymentResult.success);

      final result = await repository.processPayment(
        reservation: reservation,
        method: PaymentMethodType.creditCard,
      );

      expect(result, isA<PaymentResult>());
      expect(result, PaymentResult.success);

      verify(() => mockDataSource.processPayment(
            reservation: reservation,
            method: PaymentMethodType.creditCard,
          )).called(1);
    });

    test('should throw an exception when the call fails', () async {
      when(() => mockDataSource.processPayment(
            reservation: reservation,
            method: PaymentMethodType.creditCard,
          )).thenThrow(Exception('Generic Error'));

      final call = repository.processPayment(
        reservation: reservation,
        method: PaymentMethodType.creditCard,
      );

      expect(call, throwsA(isA<Exception>()));

      verify(() => mockDataSource.processPayment(
            reservation: reservation,
            method: PaymentMethodType.creditCard,
          )).called(1);
    });
  });
}
