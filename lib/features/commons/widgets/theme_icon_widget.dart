import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:levy/core/theme/theme_sizes.dart';

final class ThemeIconWidget extends StatelessWidget {
  const ThemeIconWidget({
    super.key,
    required this.icon,
    this.onIconPressed,
  });

  final String icon;
  final VoidCallback? onIconPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onIconPressed,
      child: Padding(
        padding: const EdgeInsets.all(ThemeSizes.micro),
        child: SvgPicture.asset(
          icon,
          semanticsLabel: 'Acme Logo',
          width: 24,
          height: 24,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
