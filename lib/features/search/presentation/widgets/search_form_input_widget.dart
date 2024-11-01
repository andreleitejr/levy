import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_sizes.dart';

final class SearchFormInputWidget extends StatelessWidget {
  const SearchFormInputWidget({
    super.key,
    required this.controller,
    required this.labelText,
    required this.onPressed,
  });

  final TextEditingController controller;
  final String labelText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(ThemeSizes.medium),
        labelText: labelText,
      ),
      onTap: onPressed,
      controller: controller,
    );
  }
}
