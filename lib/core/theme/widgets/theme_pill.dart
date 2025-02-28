import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme.dart';
import 'package:levy/features/commons/theme/widgets/theme_widgets.dart';

final class ThemePill extends StatelessWidget {
  const ThemePill({
    super.key,
    required this.icon,
    required this.title,
  });

  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 24,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: ThemeColors.grey2,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: [
          ThemeIconWidget(
            icon: icon,
            size: 10,
          ),
          const SizedBox(width: 4),
          Text(
            title,
            style: ThemeTypography.medium10.apply(
              color: ThemeColors.dark,
            ),
          ),
        ],
      ),
    );
  }
}
