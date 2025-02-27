import 'package:flutter_test/flutter_test.dart';
import 'package:levy/features/address/data/datasources/address_datasource.dart';
import 'package:levy/features/address/data/models/address_model.dart';
import 'package:levy/features/address/data/repositories/address_repository_impl.dart';
import 'package:levy/features/address/domain/entities/address_entity.dart';
import 'package:mocktail/mocktail.dart';

final class AddressDataSourceMock extends Mock implements AddressDataSource {}

void main() {
  late AddressDataSourceMock mockDataSource;
  late AddressRepositoryImpl repository;

  setUp(() {
    mockDataSource = AddressDataSourceMock();
    repository = AddressRepositoryImpl(mockDataSource);
  });

  group('AddressRepositoryImpl - get', () {
    test('should return List<AddressEntity> when the call is successful',
        () async {
      final expectedAddresses = [
        AddressModel(
          street: '123 Main St',
          city: 'Anytown',
          state: 'SP',
          postalCode: '10001',
          country: 'Brazil',
          latitude: -23.5504533,
          longitude: -46.6339112,
        ),
      ];

      when(() => mockDataSource.get()).thenAnswer((_) async => expectedAddresses);

      final result = await repository.get();

      expect(result, isA<List<AddressEntity>>());
      expect(result, expectedAddresses);

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
