import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:levy/core/theme/theme_images.dart';
import 'package:levy/features/address/data/models/address_model.dart';
import 'package:levy/features/address/domain/entities/address_entity.dart';
import 'package:levy/features/bus/domain/entities/bus_entity.dart';
import 'package:levy/features/commons/entities/amenity_entity.dart';
import 'package:levy/features/commons/external/common_mock.dart';
import 'package:levy/features/commons/models/amenity_model.dart';
import 'package:levy/features/commons/widgets/theme_error_page.dart';
import 'package:levy/features/driver/domain/entities/driver_entity.dart';
import 'package:levy/features/home/presentation/shimmers/home_search_shimmer.dart';
import 'package:levy/features/home/presentation/widgets/home_reservation_widget.dart';
import 'package:levy/features/home/presentation/widgets/home_search_widget.dart';
import 'package:levy/features/reservation/domain/entities/reservation_entity.dart';
import 'package:levy/features/route/data/models/route_model.dart';
import 'package:levy/features/route/domain/entities/route_entity.dart';
import 'package:levy/features/seat/data/models/seat_model.dart';
import 'package:levy/features/seat/domain/entities/seat_entity.dart';
import 'package:levy/features/user/domain/entities/user_entity.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers/golden_test_helper.dart';
import '../../../mocks/entities_mocks.dart';

void main() {
  late ReservationEntity reservationMock;
  late UserEntity userMock;

  setUpAll(() {
    reservationMock = ReservationEntityMock();
    userMock = UserEntityMock();
  });

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
          user: userMock,
          reservation: reservationMock,
          onNotificationButtonPressed: () {},
          onViewMapButtonPressed: () {},
          arrivalTime: '07:00',
        ),
        testName: 'HomeReservationSuccess',
      );
    });
  });
}
