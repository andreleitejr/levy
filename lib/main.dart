import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:levy/app.dart';
import 'package:levy/micro_apps.dart';
import 'package:levy_core/core.dart';

final getIt = GetIt.instance;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  LocaleSettings.useDeviceLocale();
  registerMicroApps();

  runApp(TranslationProvider(child: ProviderScope(child: App())));
}
