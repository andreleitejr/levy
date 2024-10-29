import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_colors.dart';

final class ThemeDividerLine extends StatelessWidget {
  const ThemeDividerLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: double.infinity,
      color: ThemeColors.pattern,
    );
  }
}
