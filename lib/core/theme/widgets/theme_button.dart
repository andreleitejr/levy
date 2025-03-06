import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme.dart';

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
    final backgroundColor = isValid ? ThemeColors.primary : ThemeColors.grey2;

    return SizedBox(
      height: 50,
      width: double.infinity,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
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
