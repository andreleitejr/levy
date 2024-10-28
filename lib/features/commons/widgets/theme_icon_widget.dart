import 'package:flutter/material.dart';

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
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          icon,
          width: 24,
          height: 24,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
