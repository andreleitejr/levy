import 'package:flutter_test/flutter_test.dart';
import 'package:levy/features/payment/data/datasources/payment_datasource.dart';
import 'package:levy/features/payment/data/models/payment_model.dart';
import 'package:levy/features/payment/data/repositories/payment_repository_impl.dart';
import 'package:levy/features/payment/domain/entities/payment_entity.dart';
import 'package:levy/features/payment/enums/payment_method_type.dart';
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
    test('should return List<PaymentEntity> when the call is successful',
        () async {
      final transactionId = 'transaction_001';
      final expectedPayment = PaymentModel(
        transaction: transactionId,
        amount: 399.90,
        method: 'Credit Card',
        currency: 'BRL',
        description: 'Reservation Test',
        datetime: '2024-10-23 10:00:00',
        isSuccessful: true,
      );

      when(() => mockDataSource.processPayment(
            transactionId: transactionId,
            paymentMethod: PaymentMethodType.creditCard,
          )).thenAnswer((_) async => expectedPayment);

      final result = await repository.processPayment(
        transactionId: transactionId,
        paymentMethod: PaymentMethodType.creditCard,
      );

      expect(result, isA<PaymentEntity>());
      expect(result, expectedPayment);

      verify(() => mockDataSource.processPayment(
            transactionId: transactionId,
            paymentMethod: PaymentMethodType.creditCard,
          )).called(1);
    });

    test('should throw an exception when the call fails', () async {
      when(() => mockDataSource.processPayment(
            transactionId: '',
            paymentMethod: PaymentMethodType.creditCard,
          )).thenThrow(Exception('Generic Error'));

      final call = repository.processPayment(
        transactionId: '',
        paymentMethod: PaymentMethodType.creditCard,
      );

      expect(call, throwsA(isA<Exception>()));

      verify(() => mockDataSource.processPayment(
            transactionId: '',
            paymentMethod: PaymentMethodType.creditCard,
          )).called(1);
    });
  });
}
