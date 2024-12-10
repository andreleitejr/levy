import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_colors.dart';
import 'package:levy/core/theme/theme_icons.dart';
import 'package:levy/core/theme/theme_typography.dart';
import 'package:levy/features/commons/widgets/theme_icon_widget.dart';

final class ThemeRouteTitleWidget extends StatelessWidget {
  const ThemeRouteTitleWidget({
    super.key,
    required this.title,
    required this.firstRouteTitle,
    required this.secondRouteTitle,
  });

  final String title;
  final String firstRouteTitle;
  final String secondRouteTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: ThemeTypography.regular12.apply(
              color: ThemeColors.primary,
            ),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Text(
                firstRouteTitle,
                style: ThemeTypography.semiBold16,
              ),
              const SizedBox(width: 16),
              ThemeIconWidget(
                icon: ThemeIcons.arrowRight,
                color: ThemeColors.primary,
              ),
              const SizedBox(width: 16),
              Text(
                secondRouteTitle,
                style: ThemeTypography.semiBold16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
