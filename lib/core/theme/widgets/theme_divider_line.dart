import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme.dart';

final class ThemeDividerLine extends StatelessWidget {
  const ThemeDividerLine({
    super.key,
    this.height = 1,
    this.color = ThemeColors.dark,
  });

  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      color: color,
    );
  }
}
