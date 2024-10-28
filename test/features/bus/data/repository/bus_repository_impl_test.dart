import 'package:flutter_test/flutter_test.dart';
import 'package:levy/features/address/data/models/address_model.dart';
import 'package:levy/features/bus/data/datasources/bus_datasource.dart';
import 'package:levy/features/bus/data/models/bus_model.dart';
import 'package:levy/features/bus/data/repositories/bus_repository_impl.dart';
import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/commons/models/departure_model.dart';
import 'package:levy/features/search/data/models/search_model.dart';
import 'package:mocktail/mocktail.dart';

class BusDataSourceMock extends Mock implements BusDataSource {}

void main() {
  late BusDataSourceMock mockDataSource;
  late BusRepositoryImpl repository;

  setUp(() {
    mockDataSource = BusDataSourceMock();
    repository = BusRepositoryImpl(mockDataSource);
  });

  group('BusRepositoryImpl - get', () {
    final search = SearchModel(
      departureAddress: AddressModel(street: 'Home St'),
      returnAddress: AddressModel(street: 'Work St'),
      departureTime: '06:00',
      returnTime: '17:00',
    );

    test('should return List<BusEntity> when the call is successful', () async {
      final expectedBuses = [
        BusModel(
            id: '1',
            brand: 'Brand',
            model: 'Model',
            capacity: 30,
            isAccessible: true),
      ];

      when(
        () => mockDataSource.get(search: search),
      ).thenAnswer((_) async => expectedBuses);

      final result = await repository.get(search: search);

      expect(result, isA<List<BusEntity>>());
      expect(result, expectedBuses);

      verify(
        () => mockDataSource.get(search: search, isReturn: false),
      ).called(1);
    });

    test('should throw an exception when the call fails', () async {
      when(
        () => mockDataSource.get(search: search),
      ).thenThrow(Exception('Generic Error'));

      final call = repository.get(search: search);

      expect(call, throwsA(isA<Exception>()));

      verify(
        () => mockDataSource.get(search: search, isReturn: false),
      ).called(1);
    });
  });
}
