import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_font_families.dart';
import 'package:levy/core/theme/theme_font_sizes.dart';
import 'package:levy/core/theme/theme_font_weights.dart';

final class ThemeTypography {
  const ThemeTypography._();

  static const pattern = TextStyle(
    fontWeight: ThemeFontWeights.pattern,
    fontSize: ThemeFontSizes.pattern,
    fontFamily: ThemeFontFamilies.pattern,
  );
}
