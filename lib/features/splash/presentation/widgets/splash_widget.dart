import 'package:flutter/material.dart';
import 'package:levy_theme/core/theme/theme.dart';

final class SplashWidget extends StatelessWidget {
  const SplashWidget({super.key});

  @override
  Widget build(BuildContext context) {
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
