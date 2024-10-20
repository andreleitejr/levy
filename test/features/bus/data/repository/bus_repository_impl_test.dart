import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:levy/features/address/data/models/address_model.dart';
import 'package:levy/features/bus/data/datasources/bus_datasource.dart';
import 'package:levy/features/bus/data/models/bus_model.dart';
import 'package:levy/features/bus/data/repositories/bus_repository_impl.dart';
import 'package:levy/features/bus/enums/bus_result_type.dart';
import 'package:levy/features/search/data/models/search_model.dart';

class BusDataSourceMock extends Mock implements BusDataSource {}

void main() {
  late BusDataSourceMock mockDataSource;
  late BusRepositoryImpl repository;

  setUp(() {
    mockDataSource = BusDataSourceMock();
    repository = BusRepositoryImpl(mockDataSource);
  });

  group('BusRepositoryImpl - get', () {
    final searchEntity = SearchModel(
      homeAddress: AddressModel(street: 'Home St'),
      workAddress: AddressModel(street: 'Work St'),
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
        () => mockDataSource.get(
          search: searchEntity,
          resultType: BusResultType.home,
        ),
      ).thenAnswer((_) async => expectedBuses);

      final result = await repository.get(
        search: searchEntity,
        resultType: BusResultType.home,
      );

      expect(result, expectedBuses);
      verify(
        () => mockDataSource.get(
          search: searchEntity,
          resultType: BusResultType.home,
        ),
      ).called(1);
    });

    test('should throw an exception when the call fails', () async {
      when(
        () => mockDataSource.get(
          search: searchEntity,
          resultType: BusResultType.home,
        ),
      ).thenThrow(Exception('Generic Error'));

      final call = repository.get(
        search: searchEntity,
        resultType: BusResultType.home,
      );

      expect(call, throwsA(isA<Exception>()));
      verify(
        () => mockDataSource.get(
          search: searchEntity,
          resultType: BusResultType.home,
        ),
      ).called(1);
    });
  });
}
