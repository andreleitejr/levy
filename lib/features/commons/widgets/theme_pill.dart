import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_colors.dart';
import 'package:levy/core/theme/theme_sizes.dart';
import 'package:levy/core/theme/theme_typography.dart';

final class ThemePill extends StatelessWidget {
  const ThemePill({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Chip(
      padding: const EdgeInsets.symmetric(horizontal: ThemeSizes.medium),
      surfaceTintColor: ThemeColors.pattern,
      label: Text(
        title,
        style: ThemeTypography.pattern,
      ),
    );
  }
}
