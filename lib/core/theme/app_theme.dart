import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_styles.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData getAppDarkTheme() {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.backgroundColor,
      primaryColor: AppColors.primaryColor,
      brightness: Brightness.dark,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.secondaryColor,
        brightness: Brightness.dark,
        primary: AppColors.primaryColor,
        secondary: AppColors.secondaryColor,
        onPrimary: AppColors.textPrimary,
        onSurface: AppColors.textPrimary,
        onSurfaceVariant: AppColors.textSecondary,
      ),
      appBarTheme: AppBarTheme(
        toolbarHeight: 60,
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
        actionsPadding: EdgeInsetsDirectional.only(end: 16.0),
      ),
      cardTheme: CardThemeData(
        color: AppColors.cardColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          alignment: Alignment.center,
          fixedSize: Size(double.infinity, 54),
          backgroundColor: AppColors.primaryColor,
          foregroundColor: AppColors.textPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(24.0),
          ),
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 14.49),
          textStyle: AppTextStyles.buttonLargeStyle(
            color: AppColors.textPrimary,
          ),
        ),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: AppColors.cardColor,
        contentTextStyle: TextStyle(color: AppColors.textPrimary),
      ),
      iconTheme: IconThemeData(color: AppColors.textSecondary, size: 16.0),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.textPrimary,
        shape: CircleBorder(),
        elevation: 0.0,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.textFieldBackgroundColor,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.textFieldBorderColor),
          borderRadius: BorderRadius.circular(24.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.textFieldBorderColor),
          borderRadius: BorderRadius.circular(24.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.textFieldBorderColor),
          borderRadius: BorderRadius.circular(24.0),
        ),
      ),
    );
  }
}
