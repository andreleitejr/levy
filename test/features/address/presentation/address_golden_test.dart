import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:levy/core/theme/theme.dart';
import 'package:levy_address/address.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers/golden_test_helper.dart';

final class AddressDataSourceMock extends Mock implements AddressDataSource {}

final class GetAddressUseCaseMock extends Mock implements GetAddressUseCase {}

void main() {
  late AddressDataSourceMock addressDataSourceMock;
  late GetAddressUseCaseMock getAddressUseCaseMock;

  setUpAll(() {
    addressDataSourceMock = AddressDataSourceMock();
    getAddressUseCaseMock = GetAddressUseCaseMock();

    GetIt.instance.registerFactory<AddressDataSource>(() => addressDataSourceMock);
    GetIt.instance.registerFactory<GetAddressUseCase>(() => getAddressUseCaseMock);
  });

  group('Address Page Golden Test', () {
    testWidgets('Address Page Error', (tester) async {
      final errorMessage = 'Failed to load addresses';

      when(() => getAddressUseCaseMock.call()).thenThrow(Exception(errorMessage));

      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: ThemeErrorWidget(
          message: errorMessage,
        ),
        testName: 'AddressError',
      );
    });

    testWidgets('Address Page Loading', (tester) async {
      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: AddressShimmer(onPop: () {}),
        testName: 'AddressLoading',
      );
    });

    testWidgets('Address Page Success', (tester) async {
      final c = Completer<List<AddressModel>>();

      when(() => addressDataSourceMock.get()).thenAnswer((_) async {

        return c.future;
      });

      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: AddressPage(),
        testName: 'AddressSuccess',
      );

      c.complete(AddressMock.response.map<AddressModel>((address) {
        return AddressModel.fromJson(address);
      }).toList());
    });
  });
}
