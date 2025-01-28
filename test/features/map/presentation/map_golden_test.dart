import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:levy/core/theme/theme_colors.dart';
import 'package:levy/core/theme/theme_icons.dart';
import 'package:levy/features/commons/widgets/theme_error_page.dart';
import 'package:levy/features/commons/widgets/theme_inactive_widget.dart';
import 'package:levy/features/commons/widgets/theme_loading_page.dart';
import 'package:levy/features/map/presentation/pages/map_page.dart';
import 'package:levy/features/map/presentation/utils/map_translation.dart';
import 'package:levy/features/map/presentation/widgets/map_widget.dart';
import 'package:widget_to_marker/widget_to_marker.dart';

import '../../../helpers/golden_test_helper.dart';
import '../../../mocks/entities_mocks.dart';

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
