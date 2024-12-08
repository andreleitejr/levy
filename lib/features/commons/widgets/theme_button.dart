import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_colors.dart';
import 'package:levy/core/theme/theme_icons.dart';
import 'package:levy/core/theme/theme_sizes.dart';
import 'package:levy/core/theme/theme_typography.dart';
import 'package:levy/features/commons/widgets/theme_icon_widget.dart';

final class ThemeButton extends StatelessWidget {
  const ThemeButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.valid = true,
    this.icon,
  });

  final VoidCallback onPressed;
  final String title;
  final bool valid;
  final String? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(ThemeSizes.small),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildIcon(),
            Text(
              title,
              style: ThemeTypography.semi16,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon() {
    final iconPath = icon;

    if (iconPath != null) {
      return Row(
        children: [
          ThemeIconWidget(
            icon: iconPath,
            color: Colors.white,
          ),
          const SizedBox(width: 4),
        ],
      );
    }

    return Container();
  }
}
