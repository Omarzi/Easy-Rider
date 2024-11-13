import 'package:flutter/material.dart';

abstract class AppColors {
  /// Base colors
  /// Primary
  static const primaryColor = Color(0xFFFEC400);
  static const primaryColor50 = Color(0xFFFFFBE7);
  static const primaryColor502 = Color(0xFFFFFBE7);
  static const primaryColor100 = Color(0xFFFFF1B1);
  static const primaryColor200 = Color(0xFFFFE773);
  static const primaryColor300 = Color(0xFFFBDB86);
  static const primaryColor400 = Color(0xFFF6CD56);
  static const primaryColor500 = Color(0xFFF5C73F);
  static const primaryColor600 = Color(0xFFF5BF28);
  static const primaryColor700 = Color(0xFFEDAE10);
  static const primaryColor800 = Color(0xFFF4BE05);
  static const primaryColor900 = Color(0xFFF3BD06);
  static const fillOtpColor = Color(0xFFFFFDE7);

  /// Secondary colors
  static const secondaryColor = Color(0xFFB7083C);
  static const secondaryColor50 = Color(0xFFFCE2E7);
  static const secondaryOrangeColor100 = Color(0xFFF8B7C3);
  static const secondaryColor200 = Color(0xFFF2899B);
  static const secondaryColor300 = Color(0xFFEA5A75);
  static const secondaryColor400 = Color(0xFFE23859);
  static const secondaryColor500 = Color(0xFFDB1740);
  static const secondaryColor600 = Color(0xFFCB103F);
  static const secondaryColor700 = Color(0xFFB7083C);
  static const secondaryColor800 = Color(0xFFA4003B);
  static const secondaryColor900 = Color(0xFF820036);

  /// Warning colors
  static const warningColor = Color(0xFFFB8A00);
  static const warningYellowColor50 = Color(0xFFFFFDE7);
  static const warningYellowColor100 = Color(0xFFFFF9C4);
  static const warningYellowColor200 = Color(0xFFFFF59D);
  static const warningYellowColor300 = Color(0xFFFEF075);
  static const warningYellowColor400 = Color(0xFFFCEB55);
  static const warningYellowColor500 = Color(0xFFFAE635);
  static const warningYellowColor600 = Color(0xFFFDD835);
  static const warningYellowColor700 = Color(0xFFFBC02D);
  static const warningYellowColor800 = Color(0xFFF9A825);
  static const warningYellowColor900 = Color(0xFFF57F17);

  /// Error colors
  static const errorColor = Color(0xFFF44336);
  static const errorRedColor50 = Color(0xFFFFEBEE);
  static const errorRedColor100 = Color(0xFFFFCDD2);
  static const errorRedColor200 = Color(0xFFEF9A9A);
  static const errorRedColor300 = Color(0xFFE57373);
  static const errorRedColor400 = Color(0xFFEF5350);
  static const errorRedColor500 = Color(0xFFF44336);
  static const errorRedColor600 = Color(0xFFE53935);
  static const errorRedColor700 = Color(0xFFD32F2F);
  static const errorRedColor800 = Color(0xFFC62828);
  static const errorRedColor900 = Color(0xFFB71B1C);


  /// Neutral colors
  static const gray50 = Color(0xFFF7F7F7);
  static const gray100 = Color(0xFFE8E8E8);
  static const gray200 = Color(0xFFD0D0D0);
  static const gray300 = Color(0xFFB8B8B8);
  static const gray400 = Color(0xFFA0A0A0);
  static const gray500 = Color(0xFF898989);
  static const gray600 = Color(0xFF717171);
  static const gray700 = Color(0xFF5A5A5A);
  static const gray800 = Color(0xFF414141);
  static const gray900 = Color(0xFF2A2A2A);

  /// Success colors
  static const successColor = Color(0xFF43A048);
  static const successGreenColor50 = Color(0xFFE8F5E9);
  static const successGreenColor100 = Color(0xFFC8E6C9);
  static const successGreenColor200 = Color(0xFFA5D6A7);
  static const successGreenColor300 = Color(0xFF81C784);
  static const successGreenColor400 = Color(0xFF66BB6B);
  static const successGreenColor500 = Color(0xFF4CAF51);
  static const successGreenColor600 = Color(0xFF43A048);
  static const successGreenColor700 = Color(0xFF388E3D);
  static const successGreenColor800 = Color(0xFF2E7D33);
  static const successGreenColor900 = Color(0xFF1B5E21);


  static const infoColor = Color(0xFFB8B8B8);
  static const onBoardingSubTitleColor = Color(0xFFA0A0A0);

  /// Text & Icon colors
  static const contentTertiary = Color(0xFF5A5A5A);
  static const contentSecondary = Color(0xFF414141);
  static const contentPrimary = Color(0xFF2A2A2A);
  static const contentDisabled = Color(0xFFB8B8B8);

  /// Background colors
  static const backgroundColor = Color(0xFF000000);

  /// Background color with 20% opacity
  static Color get backgroundColorWithOpacity2 => backgroundColor.withOpacity(0.2);
  static Color get backgroundColorWithOpacity4 => backgroundColor.withOpacity(0.04);
  static Color get shadow => whiteShade.withOpacity(0.25);

  /// Shades colors
  static const whiteShade = Color(0xFFFFFFFF);
  static const blackShade = Color(0xFF121212);


}