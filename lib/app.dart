import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:levy/core/router/app_router.dart';
import 'package:levy/core/theme/app_theme.dart';
import 'package:levy/core/utils/i18n/strings.g.dart';

final class App extends StatelessWidget {
  App({super.key});

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