import 'package:flutter_test/flutter_test.dart';
import 'package:levy/features/bus/data/datasources/bus_datasource.dart';
import 'package:levy/features/bus/data/models/bus_model.dart';
import 'package:levy/features/bus/data/repositories/bus_repository_impl.dart';
import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/search/data/models/search_model.dart';
import 'package:mocktail/mocktail.dart';

final class BusDataSourceMock extends Mock implements BusDataSource {}

void main() {
  late BusDataSourceMock mockDataSource;
  late BusRepositoryImpl repository;

  setUp(() {
    mockDataSource = BusDataSourceMock();
    repository = BusRepositoryImpl(mockDataSource);
  });

  group('BusRepositoryImpl - get', () {
    final search = SearchModel();

    test('should return List<BusEntity> when the call is successful', () async {
      final expectedBuses = [
        BusModel(),
      ];

      when(
        () => mockDataSource.get(search),
      ).thenAnswer((_) async => expectedBuses);

      final result = await repository.get(search);

      expect(result, isA<List<BusEntity>>());
      expect(result, expectedBuses);

      verify(
        () => mockDataSource.get(search),
      ).called(1);
    });

    test('should throw an exception when the call fails', () async {
      when(
        () => mockDataSource.get(search),
      ).thenThrow(Exception('Generic Error'));

      final call = repository.get(search);

      expect(call, throwsA(isA<Exception>()));

      verify(
        () => mockDataSource.get(search),
      ).called(1);
    });
  });
}
