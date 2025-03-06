import 'package:flutter_test/flutter_test.dart';
import 'package:levy/features/splash/presentation/pages/splash_page.dart';
import 'package:levy_test_utils/test_utils.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

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
