import 'package:flutter_test/flutter_test.dart';
import 'package:levy/features/payment_method/data/datasources/payment_method_datasource.dart';
import 'package:levy/features/payment_method/data/models/payment_method_model.dart';
import 'package:levy/features/payment_method/data/repositories/payment_method_repository_impl.dart';
import 'package:levy/features/payment_method/domain/entities/payment_method_entity.dart';
import 'package:mocktail/mocktail.dart';

final class PaymentMethodDataSourceMock extends Mock implements PaymentMethodDataSource {}

void main() {
  late PaymentMethodDataSourceMock mockDataSource;
  late PaymentMethodRepositoryImpl repository;

  setUp(() {
    mockDataSource = PaymentMethodDataSourceMock();
    repository = PaymentMethodRepositoryImpl(mockDataSource);
  });

  group('PaymentMethodRepositoryImpl - get', () {
    test('should return List<PaymentMethodEntity> when the call is successful', () async {
      final expectedMethods = [
        PaymentMethodModel(
          methodType: 'Credit Card',
          brand: 'Visa',
          image: 'visa',
          cardHolderName: 'John Doe',
          cardNumber: '4111111111111111',
          expiryDate: '12/25',
          cvv: '123',
          currency: 'USD',
          billingAddress: '123 First St, Metropolis, NY, 10001, USA',
          preferred: true,
        ),
      ];

      when(() => mockDataSource.get()).thenAnswer((_) async => expectedMethods);

      final result = await repository.get();

      expect(result, isA<List<PaymentMethodEntity>>());
      expect(result, expectedMethods);

      verify(() => mockDataSource.get()).called(1);
    });

    test('should throw an exception when the call fails', () async {
      when(() => mockDataSource.get()).thenThrow(Exception('Generic Error'));

      final call = repository.get();

      expect(call, throwsA(isA<Exception>()));

      verify(() => mockDataSource.get()).called(1);
    });
  });
}
