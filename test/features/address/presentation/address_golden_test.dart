import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/core/theme/app_theme.dart';
import 'package:levy/features/address/data/datasources/address_datasource.dart';
import 'package:levy/features/address/data/models/address_model.dart';
import 'package:levy/features/address/domain/repositories/address_repository.dart';
import 'package:levy/features/address/domain/usecases/get_address_usecase.dart';
import 'package:levy/features/address/external/address_mock.dart';
import 'package:levy/features/address/presentation/pages/address_page.dart';
import 'package:levy/features/address/presentation/shimmers/address_shimmer.dart';
import 'package:levy/features/commons/widgets/theme_error_page.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';

final class AddressDataSourceMock extends Mock implements AddressDataSource {}

final class AddressRepositoryMock extends Mock implements AddressRepository {}

final class GetAddressUseCaseMock extends Mock implements GetAddressUseCase {}

void main() {
  late AddressDataSourceMock addressDataSourceMock;
  late AddressRepositoryMock addressRepositoryMock;
  late GetAddressUseCaseMock getAddressUseCaseMock;
  const String folder = 'golden_tests';

  setUpAll(() {
    addressDataSourceMock = AddressDataSourceMock();
    addressRepositoryMock = AddressRepositoryMock();
    getAddressUseCaseMock = GetAddressUseCaseMock();

    GetIt.instance.registerFactory<AddressDataSource>(() => addressDataSourceMock);
    GetIt.instance.registerFactory<AddressRepository>(() => addressRepositoryMock);
    GetIt.instance.registerFactory<GetAddressUseCase>(() => getAddressUseCaseMock);
  });

  group('Address Page Golden Test', () {
    testWidgets('Address Page error', (tester) async {
      final errorMessage = 'Failed to load addresses';

      when(() => getAddressUseCaseMock()).thenThrow(Exception(errorMessage));

      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: ThemeErrorWidget(
              message: errorMessage,
            ),
          ),
        ),
      );

      await tester.pump(const Duration(milliseconds: 10000));

      await expectLater(
          find.byType(MaterialApp),
          matchesGoldenFile('$folder/AddressError.png'));
    });

    testWidgets('AddressPage Loading and Success', (tester) async {
      Completer<List<AddressModel>> c = Completer<List<AddressModel>>();

      when(
            () => addressDataSourceMock.get(),
      ).thenAnswer((_) async {
        return c.future;
      });

      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: AddressShimmer(onPop: (){}),
          ),
        ),
      );

      await tester.pump(const Duration(milliseconds: 10000));

      await expectLater(find.byType(MaterialApp),
          matchesGoldenFile('$folder/AddressLoading.png'));
    });

    testWidgets('AddressPage Loading and Success', (tester) async {
      Completer<List<AddressModel>> c = Completer<List<AddressModel>>();

      when(
            () => addressDataSourceMock.get(),
      ).thenAnswer((_) async {
        return c.future;
      });

      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            theme: AppTheme.theme,
            home: AddressPage(),
          ),
        ),
      );

      await tester.pump(const Duration(milliseconds: 10000));
      await tester.pump(const Duration(milliseconds: 10000));
      await tester.pump(const Duration(milliseconds: 10000));

      await expectLater(find.byType(AddressPage), matchesGoldenFile(
          '$folder/AddressSuccess.png'));

      c.complete(AddressMock.response.map<AddressModel>((address) {
        return AddressModel.fromJson(address);
      }).toList());
    });
  });
}