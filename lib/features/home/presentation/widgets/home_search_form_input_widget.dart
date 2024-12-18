import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_colors.dart';
import 'package:levy/core/theme/theme_typography.dart';
import 'package:levy/features/commons/widgets/theme_icon_widget.dart';

final class SearchFormInputWidget extends StatelessWidget {
  const SearchFormInputWidget({
    super.key,
    required this.controller,
    required this.labelText,
    required this.hintText,
    required this.onPressed,
    required this.icon,
  });

  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final VoidCallback onPressed;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: true,
      decoration: InputDecoration(
        prefix: Align(
          widthFactor: 1,
          heightFactor: 0.75,
          child: ThemeIconWidget(
            icon: icon,
            padding: const EdgeInsets.only(right: 8, top: 6),
            color: ThemeColors.primary,
            size: 16,
          ),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        prefixIconConstraints: BoxConstraints(),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        labelText: labelText,
        labelStyle: ThemeTypography.regular14.apply(color: ThemeColors.grey4),
        hintText: hintText,
        hintStyle: ThemeTypography.regular14.apply(color: ThemeColors.grey4),
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
      style: ThemeTypography.semiBold14,
    );
  }
}
