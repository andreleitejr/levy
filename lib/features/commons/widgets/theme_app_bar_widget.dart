import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_colors.dart';
import 'package:levy/core/theme/theme_typography.dart';
import 'package:levy/features/commons/widgets/theme_icon_widget.dart';

final class ThemeAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const ThemeAppBarWidget({
    super.key,
    this.leadingIcon,
    this.onLeadingPressed,
    required this.title,
    this.actionText,
    this.onActionPressed,
    this.height = 64,
  });

  final String? leadingIcon;
  final VoidCallback? onLeadingPressed;
  final String title;
  final String? actionText;
  final VoidCallback? onActionPressed;
  final double height;

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        onTap: onLeadingPressed,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: _buildLeading(),
        ),
      ),
      title: Text(
        title,
        style: ThemeTypography.semiBold16,
      ),
      centerTitle: true,
      actions: [_buildAction()],
    );
  }

  Widget _buildLeading() {
    final icon = leadingIcon;

    if (icon != null) {
      return ThemeIconWidget(
        onIconPressed: onLeadingPressed,
        icon: icon,
        color: ThemeColors.primary,
      );
    }

    return const SizedBox.shrink();
  }

  Widget _buildAction() {
    final text = actionText;

    if (text != null) {
      return GestureDetector(
        onTap: onActionPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            text,
            style: ThemeTypography.regular14,
          ),
        ),
      );
    }

    return const SizedBox.shrink();
  }
}
