import 'package:flutter/cupertino.dart';

import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();
  // Title Large
  static TextStyle titleLarge({
    Color? color,
    double? hight,
    double? letterSpacing,
  }) {
    return TextStyle(
      color: color ?? AppColors.blackColor,
      fontWeight: FontWeight.bold,
      fontSize: 25,
      height: hight ?? 1.0,
      letterSpacing: letterSpacing ?? 0.0,
    );
  }

  // Body Large
  static TextStyle bodyLargeRegular({
    Color? color,
    double? hight,
    double? letterSpacing,
  }) {
    return TextStyle(
      color: color ?? AppColors.blackColor,
      fontWeight: FontWeight.w400,
      fontSize: 18,
      height: hight ?? 1.0,
      letterSpacing: letterSpacing ?? 0.0,
    );
  }

  static TextStyle bodyLargeSemiBold({
    Color? color,
    double? hight,
    double? letterSpacing,
  }) {
    return TextStyle(
      color: color ?? AppColors.blackColor,
      fontWeight: FontWeight.w600,
      fontSize: 18,
      height: hight ?? 1.0,
      letterSpacing: letterSpacing ?? 0.0,
    );
  }

  // Body Medium
  static TextStyle bodyMediumRegular({
    Color? color,
    double? hight,
    double? letterSpacing,
  }) {
    return TextStyle(
      color: color ?? AppColors.blackColor,
      fontWeight: FontWeight.w400,
      fontSize: 16,
      height: hight ?? 1.0,
      letterSpacing: letterSpacing ?? 0.0,
    );
  }

  static TextStyle bodyMediumBold({
    Color? color,
    double? hight,
    double? letterSpacing,
  }) {
    return TextStyle(
      color: color ?? AppColors.blackColor,
      fontWeight: FontWeight.bold,
      fontSize: 16,
      height: hight ?? 1.0,
      letterSpacing: letterSpacing ?? 0.0,
    );
  }

  // Body Small
  static TextStyle bodySmallRegular({
    Color? color,
    double? hight,
    double? letterSpacing,
  }) {
    return TextStyle(
      color: color ?? AppColors.blackColor,
      fontWeight: FontWeight.w400,
      fontSize: 12,
      height: hight ?? 1.0,
      letterSpacing: letterSpacing ?? 0.0,
    );
  }

  static TextStyle bodySmallBold({
    Color? color,
    double? hight,
    double? letterSpacing,
  }) {
    return TextStyle(
      color: color ?? AppColors.blackColor,
      fontWeight: FontWeight.bold,
      fontSize: 12,
      height: hight ?? 1.0,
      letterSpacing: letterSpacing ?? 0.0,
    );
  }

  // UI
  static TextStyle textFieldHintStyle({
    Color? color,
    double? hight,
    double? letterSpacing,
  }) {
    return TextStyle(
      color: color ?? AppColors.blackColor,
      fontWeight: FontWeight.w400,
      fontSize: 18,
      height: hight ?? 1.0,
      letterSpacing: letterSpacing ?? 0.0,
    );
  }

  static TextStyle textFieldStyle({
    Color? color,
    double? hight,
    double? letterSpacing,
  }) {
    return TextStyle(
      color: color ?? AppColors.blackColor,
      fontWeight: FontWeight.w600,
      fontSize: 18,
      height: hight ?? 1.0,
      letterSpacing: letterSpacing ?? 0.0,
    );
  }

  static TextStyle buttonLargeStyle({
    Color? color,
    double? hight,
    double? letterSpacing,
  }) {
    return TextStyle(
      color: color ?? AppColors.whiteColor,
      fontWeight: FontWeight.bold,
      fontSize: 17.37,
      height: hight ?? 1.0,
      letterSpacing: letterSpacing ?? 0.0,
    );
  }

  static TextStyle buttonSmallStyle({
    Color? color,
    double? hight,
    double? letterSpacing,
  }) {
    return TextStyle(
      color: color ?? AppColors.whiteColor,
      fontWeight: FontWeight.bold,
      fontSize: 12,
      height: hight ?? 1.0,
      letterSpacing: letterSpacing ?? 0.0,
    );
  }

  static TextStyle cardSubTitleStyle({
    Color? color,
    double? hight,
    double? letterSpacing,
  }) {
    return TextStyle(
      color: color ?? AppColors.blackColor,
      fontWeight: FontWeight.w500,
      fontSize: 11.36,
      height: hight ?? 1.0,
      letterSpacing: letterSpacing ?? 0.0,
    );
  }

  static TextStyle cardTitleStyle({
    Color? color,
    double? hight,
    double? letterSpacing,
  }) {
    return TextStyle(
      color: color ?? AppColors.blackColor,
      fontWeight: FontWeight.w900,
      fontSize: 15,
      height: hight ?? 1.0,
      letterSpacing: letterSpacing ?? 0.0,
    );
  }

  static TextStyle buttomNavBarStyle({
    Color? color,
    double? hight,
    double? letterSpacing,
  }) {
    return TextStyle(
      color: color ?? AppColors.blackColor,
      fontWeight: FontWeight.bold,
      fontSize: 11.98,
      height: hight ?? 1.0,
      letterSpacing: letterSpacing ?? 0.0,
    );
  }
}
