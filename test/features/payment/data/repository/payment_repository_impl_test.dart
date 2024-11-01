import 'package:flutter_test/flutter_test.dart';
import 'package:levy/features/payment/data/datasources/payment_datasource.dart';
import 'package:levy/features/payment/data/repositories/payment_repository_impl.dart';
import 'package:levy/features/payment/enums/payment_result.dart';
import 'package:levy/features/payment_method/data/models/payment_method_model.dart';
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
    final reservation = const ReservationModel();
    final paymentMethod = const PaymentMethodModel();
    test('should return List<PaymentEntity> when the call is successful',
        () async {
      when(() => mockDataSource.processPayment(
            reservation: reservation,
            method: paymentMethod,
          )).thenAnswer((_) async => PaymentResult.success);

      final result = await repository.processPayment(
        reservation: reservation,
        method: paymentMethod,
      );

      expect(result, isA<PaymentResult>());
      expect(result, PaymentResult.success);

      verify(() => mockDataSource.processPayment(
            reservation: reservation,
            method: paymentMethod,
          )).called(1);
    });

    test('should throw an exception when the call fails', () async {
      when(() => mockDataSource.processPayment(
            reservation: reservation,
            method: paymentMethod,
          )).thenThrow(Exception('Generic Error'));

      final call = repository.processPayment(
        reservation: reservation,
        method: paymentMethod,
      );

      expect(call, throwsA(isA<Exception>()));

      verify(() => mockDataSource.processPayment(
            reservation: reservation,
            method: paymentMethod,
          )).called(1);
    });
  });
}
