import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:levy/core/theme/theme.dart';

final class ThemeIconWidget extends StatelessWidget {
  const ThemeIconWidget({
    super.key,
    required this.icon,
    this.onIconPressed,
    this.color = ThemeColors.dark,
    this.size = 20,
    this.padding = EdgeInsets.zero,
  });

  final String icon;
  final VoidCallback? onIconPressed;
  final Color color;
  final double size;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onIconPressed,
      child: Padding(
        padding: padding,
        child: SvgPicture.asset(
          icon,
          colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
          width: size,
          height: size,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
