import 'package:flutter_test/flutter_test.dart';
import 'package:levy/features/commons/theme/widgets/theme_widgets.dart';
import 'package:levy/features/time/presentation/pages/time_page.dart';

import '../../../helpers/golden_test_helper.dart';

void main() {
  group('Time Page Golden Test', () {
    testWidgets('Time Page Error', (tester) async {
      final errorMessage = 'Failed to load Time Page';

      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: ThemeErrorWidget(
          message: errorMessage,
        ),
        testName: 'TimeError',
      );
    });

    testWidgets('Time Page Loading', (tester) async {
      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: ThemeLoadingWidget(),
        testName: 'TimeLoading',
      );
    });

    testWidgets('Time Page Success', (tester) async {
      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: TimePage(),
        testName: 'TimeSuccess',
      );
    });
  });
}
