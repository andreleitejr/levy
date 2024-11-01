import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_sizes.dart';
import 'package:levy/core/theme/theme_typography.dart';

final class ThemeListItemWidget extends StatelessWidget {
  const ThemeListItemWidget({
    super.key,
    this.image,
    required this.title,
    required this.subtitle,
    this.trailing,
    this.onItemPressed,
  });

  final String? image;
  final String title;
  final String subtitle;
  final Widget? trailing;
  final VoidCallback? onItemPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(ThemeSizes.large),
      child: ListTile(
        onTap: onItemPressed,
        contentPadding: EdgeInsets.zero,
        leading: _buildLeadingImage(),
        title: Text(
          title,
          style: ThemeTypography.pattern,
        ),
        subtitle: Text(
          subtitle,
          style: ThemeTypography.pattern,
        ),
        trailing: trailing,
      ),
    );
  }

  Widget? _buildLeadingImage() {
    final leadingImage = image;

    if (leadingImage != null) {
      return ClipOval(
        child: Image.network(
          leadingImage,
          width: 48,
          height: 48,
          fit: BoxFit.fitWidth,
        ),
      );
    }

    return null;
  }
}
