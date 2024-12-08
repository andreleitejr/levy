import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_colors.dart';
import 'package:levy/core/theme/theme_icons.dart';
import 'package:levy/core/theme/theme_sizes.dart';
import 'package:levy/core/theme/theme_typography.dart';
import 'package:levy/features/commons/widgets/theme_icon_widget.dart';

final class SearchFormInputWidget extends StatelessWidget {
  const SearchFormInputWidget({
    super.key,
    required this.controller,
    required this.labelText,
    required this.onPressed,
    required this.icon,
  });

  final TextEditingController controller;
  final String labelText;
  final VoidCallback onPressed;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ThemeIconWidget(
            icon: icon,
            width: 16,
            height: 16,
          ),
        ),

        contentPadding: const EdgeInsets.all(ThemeSizes.medium),
        labelText: labelText,
        labelStyle: controller.text.isNotEmpty
            ? ThemeTypography.regular12
            : ThemeTypography.regular14.apply(
                color: ThemeColors.grey4,

              ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: ThemeColors.grey2,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: ThemeColors.grey2,
          ),
        ),
      ),
      onTap: onPressed,
      controller: controller,
      style: ThemeTypography.semi14,
    );
  }
}
