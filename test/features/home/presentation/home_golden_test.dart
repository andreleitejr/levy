import 'package:flutter_test/flutter_test.dart';
import 'package:levy/features/home/home.dart';
import 'package:levy_core/core.dart';

import '../../../helpers/golden_test_helper.dart';
import '../../../mocks/entities_mocks.dart';

void main() {
  group('Home Page Golden Test', () {
    testWidgets('Home Page Error', (tester) async {
      final errorMessage = 'Failed to load Home Page';

      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: ThemeErrorWidget(
          message: errorMessage,
        ),
        testName: 'HomeError',
      );
    });

    testWidgets('Home Page Loading', (tester) async {
      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: HomeShimmer(),
        testName: 'HomeLoading',
      );
    });

    testWidgets('Home Page Success without Reservation', (tester) async {
      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: HomeSearchWidget(
          onNotificationButtonPressed: () {},
          onDepartureAddressSelect: () {},
          onReturnAddressSelect: () {},
          onDepartureTimeSelect: () {},
          onReturnTimeSelect: () {},
          onButtonPressed: () {},
        ),
        testName: 'HomeSearchSuccess',
      );
    });

    testWidgets('Home Page Success with Reservation', (tester) async {
      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: HomeReservationWidget(
          user: UserEntityMock(),
          reservation: ReservationEntityMock(),
          onNotificationButtonPressed: () {},
          onViewMapButtonPressed: () {},
          arrivalTime: '07:00',
        ),
        testName: 'HomeReservationSuccess',
      );
    });
  });
}
