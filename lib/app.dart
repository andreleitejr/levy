import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:levy/core/router/app_router.dart';
import 'package:levy_core/core.dart';

final class App extends StatelessWidget {
  App({super.key});

  final _appRouter = AppRouter();

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
