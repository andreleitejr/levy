import 'package:flutter_test/flutter_test.dart';
import 'package:levy/core/theme/theme.dart';
import 'package:levy/features/reservation/presentation/utils/reservation_translation.dart';
import 'package:levy/features/reservation/presentation/widgets/reservation_widget.dart';

import '../../../helpers/golden_test_helper.dart';
import '../../../mocks/entities_mocks.dart';

void main() {
  group('Reservation Page Golden Test', () {
    testWidgets('Reservation Page Error', (tester) async {
      final errorMessage = 'Failed to load Reservation Page';

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
