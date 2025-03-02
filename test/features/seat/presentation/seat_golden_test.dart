import 'package:flutter_test/flutter_test.dart';
import 'package:levy/features/seat/data/models/seat_model.dart';
import 'package:levy/features/seat/presentation/pages/seat_page.dart';
import 'package:levy_core/core.dart';

import '../../../helpers/golden_test_helper.dart';

void main() {
  group('Seat Page Golden Test', () {
    testWidgets('Seat Page Error', (tester) async {
      final errorMessage = 'Failed to load Seat Page';

      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: ThemeErrorWidget(
          message: errorMessage,
        ),
        testName: 'SeatError',
      );
    });

    testWidgets('Seat Page Loading', (tester) async {
      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: ThemeLoadingWidget(),
        testName: 'SeatLoading',
      );
    });

    testWidgets('Seat Page Success', (tester) async {
      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: SeatPage(
          items: CommonMock.seats.map((seat) => SeatModel.fromJson(seat)).toList(),
        ),
        testName: 'SeatSuccess',
      );
    });
  });
}
