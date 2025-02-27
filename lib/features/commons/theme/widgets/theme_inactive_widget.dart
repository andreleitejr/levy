import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_colors.dart';
import 'package:levy/core/theme/theme_typography.dart';
import 'package:levy/features/commons/theme/widgets/theme_app_bar_widget.dart';
import 'package:levy/features/commons/theme/widgets/theme_icon_widget.dart';

final class ThemeInactiveWidget extends StatelessWidget {
  const ThemeInactiveWidget({
    super.key,
    required this.appBarTitle,
    required this.icon,
    required this.title,
    required this.description,
    required this.buttonText,
    required this.onButtonPressed,
  });

  final String appBarTitle;
  final String icon;
  final String title;
  final String description;
  final String buttonText;
  final VoidCallback onButtonPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ThemeAppBarWidget(
        title: appBarTitle,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ThemeIconWidget(
              icon: icon,
              size: 48,
              color: ThemeColors.primary,
            ),
            const SizedBox(height: 16),
            Text(
              title,
              style: ThemeTypography.semiBold14,
            ),
            const SizedBox(height: 16),
            Text(
              description,
              style: ThemeTypography.regular14,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: onButtonPressed,
              style: TextButton.styleFrom(
                backgroundColor: Colors.transparent,
                foregroundColor: ThemeColors.primary,
              ),
              child: Text(
                buttonText,
                style: ThemeTypography.semiBold14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
