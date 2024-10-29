import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_colors.dart';
import 'package:levy/core/theme/theme_sizes.dart';
import 'package:levy/core/theme/theme_typography.dart';

final class ThemeButton extends StatelessWidget {
  const ThemeButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.valid = true,
  });

  final VoidCallback onPressed;
  final String title;
  final bool valid;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(ThemeSizes.medium), // <-- Radius
          ),
          backgroundColor: ThemeColors.pattern,
        ),
        child: Text(
          title,
          style: ThemeTypography.pattern.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
