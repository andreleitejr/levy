import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_font_families.dart';
import 'package:levy/core/theme/theme_font_sizes.dart';
import 'package:levy/core/theme/theme_font_weights.dart';

final class ThemeTypography {
  const ThemeTypography._();

  static const regular12 = TextStyle(
    fontWeight: ThemeFontWeights.regular,
    fontSize: ThemeFontSizes.small,
    fontFamily: ThemeFontFamilies.pattern,
  );

  static const medium12 = TextStyle(
    fontWeight: ThemeFontWeights.medium,
    fontSize: ThemeFontSizes.small,
    fontFamily: ThemeFontFamilies.pattern,
  );

  static const semi12 = TextStyle(
    fontWeight: ThemeFontWeights.semibold,
    fontSize: ThemeFontSizes.small,
    fontFamily: ThemeFontFamilies.pattern,
  );

  static const regular14 = TextStyle(
    fontWeight: ThemeFontWeights.regular,
    fontSize: ThemeFontSizes.medium,
    fontFamily: ThemeFontFamilies.pattern,
  );

  static const medium14 = TextStyle(
    fontWeight: ThemeFontWeights.medium,
    fontSize: ThemeFontSizes.medium,
    fontFamily: ThemeFontFamilies.pattern,
  );

  static const semi14 = TextStyle(
    fontWeight: ThemeFontWeights.semibold,
    fontSize: ThemeFontSizes.medium,
    fontFamily: ThemeFontFamilies.pattern,
  );

  static const regular16 = TextStyle(
    fontWeight: ThemeFontWeights.regular,
    fontSize: ThemeFontSizes.large,
    fontFamily: ThemeFontFamilies.pattern,
  );

  static const medium16 = TextStyle(
    fontWeight: ThemeFontWeights.medium,
    fontSize: ThemeFontSizes.large,
    fontFamily: ThemeFontFamilies.pattern,
  );

  static const semi16 = TextStyle(
    fontWeight: ThemeFontWeights.semibold,
    fontSize: ThemeFontSizes.large,
    fontFamily: ThemeFontFamilies.pattern,
  );
}
