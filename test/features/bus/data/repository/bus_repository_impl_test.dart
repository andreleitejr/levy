import 'package:flutter_test/flutter_test.dart';
import 'package:levy_shared_entities/entities.dart';
import 'package:levy_shared_entities/entities.dart';
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
