import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:levy/core/theme/theme_icons.dart';
import 'package:levy/features/commons/widgets/theme_inactive_widget.dart';
import 'package:levy/features/commons/widgets/theme_loading_page.dart';
import 'package:levy/features/reservation/data/datasources/reservation_datasource.dart';
import 'package:levy/features/reservation/domain/usecases/get_reservation_usecase.dart';
import 'package:levy/features/commons/widgets/theme_error_page.dart';
import 'package:levy/features/reservation/presentation/utils/reservation_translation.dart';
import 'package:levy/features/reservation/presentation/widgets/reservation_widget.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers/golden_test_helper.dart';
import '../../../mocks/entities_mocks.dart';

final class ReservationDataSourceMock extends Mock
    implements ReservationDataSource {}

final class GetReservationUseCaseMock extends Mock
    implements GetReservationUseCase {}

void main() {

  group('Reservation Page Golden Test', () {
    testWidgets('Reservation Page Error', (tester) async {
      final errorMessage = 'Failed to load Home Page';

      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: ThemeErrorWidget(
          message: errorMessage,
        ),
        testName: 'ReservationError',
      );
    });

    testWidgets('Reservation Page Loading', (tester) async {
      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: ThemeLoadingWidget(),
        testName: 'ReservationLoading',
      );
    });

    testWidgets('Reservation Found Page Success', (tester) async {
      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: ReservationWidget(reservation: ReservationEntityMock()),
        testName: 'ReservationSuccess',
      );
    });

    testWidgets('Reservation Empty Page Success', (tester) async {
      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: ThemeInactiveWidget(
          appBarTitle: ReservationTranslation.header.title,
          icon: ThemeIcons.ticket,
          title: ReservationTranslation.inactive.title,
          description: ReservationTranslation.inactive.description,
          buttonText: ReservationTranslation.inactive.buttonText,
          onButtonPressed: () {},
        ),
        testName: 'ReservationEmptySuccess',
      );
    });
  });
}
