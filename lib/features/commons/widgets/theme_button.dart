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
    this.isValid = true,
    this.icon,
  });

  final VoidCallback onPressed;
  final String title;
  final bool isValid;
  final String? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: isValid ? ThemeColors.primary : ThemeColors.grey2,
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
              style: ThemeTypography.semiBold16,
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
