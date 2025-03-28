import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:levy/features/bus/data/datasources/bus_datasource.dart';
import 'package:levy/features/bus/data/models/bus_model.dart';
import 'package:levy/features/bus/domain/usecases/get_bus_usecase.dart';
import 'package:levy/features/bus/external/bus_mock.dart';
import 'package:levy/features/bus/presentation/shimmers/bus_shimmer.dart';
import 'package:levy/features/bus/presentation/widgets/bus_widget.dart';
import 'package:levy/features/commons/widgets/theme_error_page.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers/golden_test_helper.dart';
import '../../../mocks/entities_mocks.dart';


final class BusDataSourceMock extends Mock implements BusDataSource {}

final class GetBusUseCaseMock extends Mock implements GetBusUseCase {}

void main() {
  late BusDataSourceMock busDataSourceMock;
  late GetBusUseCaseMock getBusUseCaseMock;

  setUpAll(() {
    busDataSourceMock = BusDataSourceMock();
    getBusUseCaseMock = GetBusUseCaseMock();

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

    testWidgets('Departure Bus Page Success', (tester) async {
      final c = Completer<List<BusModel>>();

      when(() => busDataSourceMock.get()).thenAnswer((_) async {
        return c.future;
      });

      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: BusWidget(
          items: [
            BusEntityMock(),
            BusEntityMock(),
            BusEntityMock(),
          ],
          onPop: () {},
          onItemPressed: (bus) {},
        ),
        testName: 'DepartureBusSuccess',
      );

      c.complete(BusMock.response.map<BusModel>((bus) {
        return BusModel.fromJson(bus);
      }).toList());
    });

    testWidgets('Return Bus Page Success', (tester) async {
      final c = Completer<List<BusModel>>();

      when(() => busDataSourceMock.get()).thenAnswer((_) async {
        return c.future;
      });

      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: BusWidget(
          items: [
            BusEntityMock(),
            BusEntityMock(),
            BusEntityMock(),
          ],
          onPop: () {},
          onItemPressed: (bus) {},
          selected: BusEntityMock(),
        ),
        testName: 'ReturnBusSuccess',
      );

      c.complete(BusMock.response.map<BusModel>((address) {
        return BusModel.fromJson(address);
      }).toList());
    });
  });
}

