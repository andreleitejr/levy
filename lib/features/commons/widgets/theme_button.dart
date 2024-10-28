import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_typography.dart';

class ThemeButton extends StatelessWidget {
  const ThemeButton({
    super.key,
    required this.onPressed,
    required this.title,
  });

  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: ThemeTypography.pattern,
      ),
    );
  }
}
