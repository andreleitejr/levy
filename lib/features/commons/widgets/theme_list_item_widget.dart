import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_colors.dart';
import 'package:levy/core/theme/theme_images.dart';
import 'package:levy/core/theme/theme_typography.dart';

final class ThemeListItemWidget extends StatelessWidget {
  const ThemeListItemWidget({
    super.key,
    this.image,
    required this.title,
    required this.subtitle,
    this.trailing,
    this.onPressed,
  });

  final String? image;
  final String title;
  final String subtitle;
  final Widget? trailing;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: ThemeColors.grey2,
          ),
        ),
      ),
      child: ListTile(
        onTap: onPressed,
        contentPadding: const EdgeInsets.symmetric(horizontal: 24),
        minVerticalPadding: 28,
        leading: _buildLeadingImage(),
        title: Text(
          title,
          style: ThemeTypography.semiBold14,
        ),
        subtitle: Text(
          subtitle,
          style: ThemeTypography.regular10,
        ),
        trailing: trailing,
      ),
    );
  }

  Widget? _buildLeadingImage() {
    final leadingImage = image;

    if (leadingImage != null) {
      return ClipOval(
        child: Image.asset(
          ThemeImages.getImageByString(leadingImage),
          width: 48,
          height: 48,
          fit: BoxFit.fitWidth,
        ),
      );
    }

    return null;
  }
}
