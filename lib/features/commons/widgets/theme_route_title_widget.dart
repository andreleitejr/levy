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
    this.padding,
  });

  final String title;
  final String firstRouteTitle;
  final String secondRouteTitle;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
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
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(width: 16),
              ThemeIconWidget(
                icon: ThemeIcons.arrowRight,
                color: ThemeColors.primary,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  secondRouteTitle,
                  style: ThemeTypography.semiBold16,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
