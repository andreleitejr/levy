import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:levy/core/router/app_router.dart';
import 'package:levy/core/theme/app_theme.dart';
import 'package:levy/core/utils/i18n/strings.g.dart';

final getIt = GetIt.instance;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  LocaleSettings.useDeviceLocale();
  print("############################################ ${LocaleSettings.currentLocale}");

  runApp(TranslationProvider(child: ProviderScope(child: MyApp())));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.theme,
      locale: TranslationProvider.of(context).flutterLocale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: [
        ...GlobalMaterialLocalizations.delegates,
      ],
      routerConfig: _appRouter.config(),
    );
  }
}
