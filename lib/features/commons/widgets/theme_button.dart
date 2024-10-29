import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_typography.dart';

class ThemeButton extends StatelessWidget {
  const ThemeButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.color,
  });

  final VoidCallback onPressed;
  final String title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: color,
      ),
      child: Text(
        title,
        style: ThemeTypography.pattern,
      ),
    );
  }
}
