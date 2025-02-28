import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme.dart';

final class ThemeTypography {
  const ThemeTypography._();

  static const regular10 = TextStyle(
    fontWeight: ThemeFontWeights.regular,
    fontSize: ThemeFontSizes.micro,
    fontFamily: ThemeFontFamilies.inter,
  );

  static const medium10 = TextStyle(
    fontWeight: ThemeFontWeights.medium,
    fontSize: ThemeFontSizes.micro,
    fontFamily: ThemeFontFamilies.inter,
  );

  static const regular12 = TextStyle(
    fontWeight: ThemeFontWeights.regular,
    fontSize: ThemeFontSizes.small,
    fontFamily: ThemeFontFamilies.inter,
  );

  static const medium12 = TextStyle(
    fontWeight: ThemeFontWeights.medium,
    fontSize: ThemeFontSizes.small,
    fontFamily: ThemeFontFamilies.inter,
  );

  static const semiBold12 = TextStyle(
    fontWeight: ThemeFontWeights.semiBold,
    fontSize: ThemeFontSizes.small,
    fontFamily: ThemeFontFamilies.gilroy,
    letterSpacing: 0.5,
  );

  static const regular14 = TextStyle(
    fontWeight: ThemeFontWeights.regular,
    fontSize: ThemeFontSizes.medium,
    fontFamily: ThemeFontFamilies.inter,
  );

  static const medium14 = TextStyle(
    fontWeight: ThemeFontWeights.medium,
    fontSize: ThemeFontSizes.medium,
    fontFamily: ThemeFontFamilies.inter,
  );

  static const semiBold14 = TextStyle(
    fontWeight: ThemeFontWeights.semiBold,
    fontSize: ThemeFontSizes.medium,
    fontFamily: ThemeFontFamilies.gilroy,
    letterSpacing: 0.5,
  );

  static const regular16 = TextStyle(
    fontWeight: ThemeFontWeights.regular,
    fontSize: ThemeFontSizes.large,
    fontFamily: ThemeFontFamilies.inter,
  );

  static const medium16 = TextStyle(
    fontWeight: ThemeFontWeights.medium,
    fontSize: ThemeFontSizes.large,
    fontFamily: ThemeFontFamilies.inter,
  );

  static const semiBold16 = TextStyle(
    fontWeight: ThemeFontWeights.bold,
    fontSize: ThemeFontSizes.large,
    fontFamily: ThemeFontFamilies.gilroy,
    letterSpacing: 0.75,
  );

  static const semiBold24 = TextStyle(
    fontWeight: ThemeFontWeights.bold,
    fontSize: ThemeFontSizes.extraLarge,
    fontFamily: ThemeFontFamilies.gilroy,
    letterSpacing: 0.75,
  );

  static const medium42 = TextStyle(
    fontWeight: ThemeFontWeights.medium,
    fontSize: 42,
    fontFamily: ThemeFontFamilies.gilroy,
    letterSpacing: 0.5,
  );
}
