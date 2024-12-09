import 'package:flutter/material.dart';
import 'package:levy/core/theme/theme_colors.dart';

class AppTheme {
  static ThemeData get theme {
    return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      colorScheme: ColorScheme.fromSwatch(
        accentColor: ThemeColors.secondary,
      ).copyWith(surface: Colors.white),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          disabledBackgroundColor: ThemeColors.grey3,
          backgroundColor: ThemeColors.primary,
          foregroundColor: Colors.white,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          disabledBackgroundColor: ThemeColors.grey3,
          backgroundColor: ThemeColors.primary,
          foregroundColor: Colors.white,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: ThemeColors.primary,
        foregroundColor: Colors.white,
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          disabledForegroundColor: ThemeColors.grey3,
          backgroundColor: Colors.transparent,
          foregroundColor: ThemeColors.primary,
          side: BorderSide(
            color: ThemeColors.primary,
          ),
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        foregroundColor: ThemeColors.dark,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
      ),
    );
  }
}
