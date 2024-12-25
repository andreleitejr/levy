import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:levy/core/router/app_router.gr.dart';
import 'package:levy/core/theme/theme_colors.dart';
import 'package:levy/core/theme/theme_images.dart';
import 'package:levy/features/splash/presentation/providers/splash_notifier_provider.dart';

@RoutePage()
final class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

final class _SplashPageState extends ConsumerState<SplashPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(splashNotifierProvider.notifier).init();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(splashNotifierProvider);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (state.isLoaded) {
        context.router.replace(HomeRoute(
          user: state.user,
          reservation: state.reservation,
        ));
      }
    });

    return Scaffold(
      backgroundColor: ThemeColors.primary,
      body: Center(
        child: Image.asset(
          ThemeImages.logo,
          width: 75,
        ),
      ),
    );
  }
}
