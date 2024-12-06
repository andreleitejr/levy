import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:levy/core/theme/theme_colors.dart';

final class ThemeIconWidget extends StatelessWidget {
  const ThemeIconWidget({
    super.key,
    required this.icon,
    this.onIconPressed,
    this.color = ThemeColors.primary,
    this.width = 20,
    this.height = 20,
  });

  final String icon;
  final VoidCallback? onIconPressed;
  final Color color;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onIconPressed,
      child: SvgPicture.asset(
        icon,
        semanticsLabel: 'Acme Logo',
        colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
        width: width,
        height: height,
        fit: BoxFit.contain,
      ),
    );
  }
}
