import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:levy/features/address/domain/entities/address_entity.dart';
import 'package:levy/features/bus/data/datasources/bus_datasource.dart';
import 'package:levy/features/bus/data/models/bus_model.dart';
import 'package:levy/features/bus/domain/usecases/get_bus_usecase.dart';
import 'package:levy/features/bus/external/bus_mock.dart';
import 'package:levy/features/bus/presentation/pages/bus_page.dart';
import 'package:levy/features/bus/presentation/shimmers/bus_shimmer.dart';
import 'package:levy/features/commons/widgets/theme_error_page.dart';
import 'package:levy/features/search/domain/entities/search_entity.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers/golden_test_helper.dart';

final class BusDataSourceMock extends Mock implements BusDataSource {}

final class GetBusUseCaseMock extends Mock implements GetBusUseCase {}

void main() {
  late BusDataSourceMock busDataSourceMock;
  late GetBusUseCaseMock getBusUseCaseMock;
  late SearchEntityMock searchMock;

  setUpAll(() {
    busDataSourceMock = BusDataSourceMock();
    getBusUseCaseMock = GetBusUseCaseMock();
    searchMock = SearchEntityMock();

    GetIt.instance.registerFactory<BusDataSource>(() => busDataSourceMock);
    GetIt.instance.registerFactory<GetBusUseCase>(() => getBusUseCaseMock);
  });

  group('Bus Page Golden Test', () {
    testWidgets('Bus Page Error', (tester) async {
      final errorMessage = 'Failed to load addresses';

      when(() => getBusUseCaseMock()).thenThrow(Exception(errorMessage));

      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: ThemeErrorWidget(
          message: errorMessage,
        ),
        testName: 'BusError',
      );
    });

    testWidgets('Bus Page Loading', (tester) async {
      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: BusShimmer(onPop: () {}),
        testName: 'BusLoading',
      );
    });

    testWidgets('Bus Page Success', (tester) async {
      final c = Completer<List<BusModel>>();

      when(() => busDataSourceMock.get()).thenAnswer((_) async {
        return c.future;
      });

      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: BusPage(search: searchMock),
        testName: 'BusSuccess',
      );

      c.complete(BusMock.response.map<BusModel>((address) {
        return BusModel.fromJson(address);
      }).toList());
    });
  });
}

class AddressEntityMock extends Mock implements AddressEntity {
  @override
  String get name => 'First St';
  @override
  String get street => 'First Street';
  @override
  String get number => '123';
  @override
  String get city => 'Metropolis';
  @override
  String get state => 'NY';
  @override
  String get postalCode => '10001';
  @override
  String get country => 'USA';
  @override
  double get latitude => 40.7128;
  @override
  double get longitude => -74.0060;
}

class SearchEntityMock extends Mock implements SearchEntity {
  @override
  AddressEntity get departureAddress => AddressEntityMock();
  @override
  AddressEntity get returnAddress => AddressEntityMock();
  @override
  String get departureTime => '04:00';
  @override
  String get returnTime => '15:00';
}
