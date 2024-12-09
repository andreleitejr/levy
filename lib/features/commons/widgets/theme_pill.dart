import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_colors.dart';
import 'package:levy/core/theme/theme_icons.dart';
import 'package:levy/core/theme/theme_sizes.dart';
import 'package:levy/core/theme/theme_typography.dart';
import 'package:levy/features/commons/widgets/theme_icon_widget.dart';

final class ThemePill extends StatelessWidget {
  const ThemePill({
    super.key,
    required this.title,
  });

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
            icon: ThemeIcons.home,
            size: 10,
          ),
          const SizedBox(width: 4),
          Text(
            title,
            style: ThemeTypography.medium10.apply(color: ThemeColors.dark),
          ),
        ],
      ),
    );
  }
}
