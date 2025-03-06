import 'package:flutter_test/flutter_test.dart';
import 'package:levy/features/home/home.dart';
import 'package:levy_shared_entities/entities.dart';
import 'package:levy_test_utils/test_utils.dart';
import 'package:levy_theme/core/theme/theme.dart';

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
          user: UserModel.fromJson(UserMock.response),
          reservation: ReservationModel.fromJson(ReservationMock.response),
          onNotificationButtonPressed: () {},
          onViewMapButtonPressed: () {},
          arrivalTime: '07:00',
        ),
        testName: 'HomeReservationSuccess',
      );
    });
  });
}
