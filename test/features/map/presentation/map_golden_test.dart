import 'package:flutter_test/flutter_test.dart';
import 'package:levy/core/theme/theme_icons.dart';
import 'package:levy/features/commons/theme/widgets/theme_error_page.dart';
import 'package:levy/features/commons/theme/widgets/theme_inactive_widget.dart';
import 'package:levy/features/commons/theme/widgets/theme_loading_page.dart';
import 'package:levy/features/map/presentation/utils/map_translation.dart';

import '../../../helpers/golden_test_helper.dart';

void main() {
  group('Map Page Golden Test', () {
    testWidgets('Map Page Error', (tester) async {
      final errorMessage = 'Failed to load Map Page';

      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: ThemeErrorWidget(
          message: errorMessage,
        ),
        testName: 'MapError',
      );
    });

    testWidgets('Map Page Loading', (tester) async {
      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: ThemeLoadingWidget(),
        testName: 'MapLoading',
      );
    });

    testWidgets('Map Page Success', (tester) async {
      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: ThemeInactiveWidget(
          appBarTitle: MapTranslation.header.title,
          icon: ThemeIcons.ticket,
          title: MapTranslation.inactive.title,
          description: MapTranslation.inactive.description,
          buttonText: MapTranslation.inactive.buttonText,
          onButtonPressed: () {},
        ),
        testName: 'MapSuccess',
      );
    });
  });
}
