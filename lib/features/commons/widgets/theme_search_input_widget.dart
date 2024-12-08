import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_colors.dart';
import 'package:levy/core/theme/theme_icons.dart';
import 'package:levy/core/theme/theme_typography.dart';
import 'package:levy/features/commons/widgets/theme_icon_widget.dart';

final class ThemeSearchInputWidget extends StatelessWidget {
  const ThemeSearchInputWidget({
    super.key,
    this.hintText,
    this.icon = ThemeIcons.search,
    this.onChanged,
    this.onTap,
    this.enabled = true,
  });

  final String? hintText;
  final String icon;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;
  final bool enabled;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: ThemeColors.grey3,
            width: 1.5,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Row(
            children: [
              _buildIcon(),
              SizedBox(width: 14),
              _buildHintText(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIcon() {
    return ThemeIconWidget(
      icon: icon,
      width: 20,
      height: 20,
      color: ThemeColors.grey3,
    );
  }

  Widget _buildHintText() {
    return Expanded(
      child: TextField(
        onChanged: onChanged,
        enabled: enabled,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: ThemeTypography.regular14.copyWith(color: Colors.grey),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
