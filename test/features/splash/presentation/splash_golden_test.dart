import 'package:flutter_test/flutter_test.dart';
import 'package:levy/features/splash/presentation/pages/splash_page.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import '../../../helpers/golden_test_helper.dart';

void main() {
  sqfliteFfiInit();
  databaseFactory = databaseFactoryFfi;

  group('Splash Page Golden Test', () {
    testWidgets('Splash Page Success', (tester) async {
      await runGoldenTestForDifferentScreenSizes(
        tester: tester,
        widget: SplashPage(),
        testName: 'SplashSuccess',
      );
    });
  });
}
