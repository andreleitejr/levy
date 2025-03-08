import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:levy/core/router/app_router.dart';
import 'package:levy_core/core/utils/i18n/strings.g.dart';
import 'package:levy_theme/core/theme/theme.dart';

final getIt = GetIt.instance;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  getIt.registerSingleton<AppRouter>(AppRouter());
  LocaleSettings.useDeviceLocale();
  await dotenv.load();
  runApp(TranslationProvider(child: ProviderScope(child: App())));
}

final class App extends StatelessWidget {
  App({super.key});

  final _appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppThemes.defaultTheme,
      locale: TranslationProvider.of(context).flutterLocale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: [
        ...GlobalMaterialLocalizations.delegates,
      ],
      routerConfig: _appRouter.config(),
    );
  }
}
