import 'package:flutter/material.dart';

class ThemeColor {
  ThemeColor._();

  static const Color engine = Color(0xFF191919);
  static const Color secondary = Color(0xFF272727);
  static const Color buttonPrimary = Color(0xFFFFF000); //Color(0xFF03DDB5);
  static const Color textfieldColor = Color(0xFF353535);
  static const Color darkSecondary = Color(0xFF0C0C0C);

  static const Color black = Colors.black;
  static const Color premiumColor = Color(0xFFFFD700);
  static Color buttonFocusColor = Colors.white.withOpacity(0.2);

  static const Color greyTransparentColor = Color(0xFF80000000);
  static const Color greyColor = Color(0xFF909090);
  static const Color headerSubTitle = Color(0xFFCECECE);
  static const Color facebookButtonColor = Color(0xFF00258D);
  static const Color facebookCircleButtonColor = Color(0xFF4267b2);
  static const Color background = Color(0xFF191919);
  static const Color setUpCompColor = Color(0xFFEEEEEE);
  static const Color unselectedBorderColor = Color(0x80454545);

  static const Color statusBar = brand02;

  static const Color navigationBar = Colors.white;

  static const Color lightestGray = Color.fromRGBO(35, 31, 32, 0.08);
  static const Color solidGray = Color.fromRGBO(25, 25, 25, 1);
  static const Color gray = Color.fromRGBO(35, 31, 32, 0.56);
  static const Color pageIndicatorColor = Color.fromRGBO(85, 85, 85, 0.3);
  static const Color pageIndicatorActiveColor =
      Color.fromRGBO(216, 216, 216, 0.3);

  static const Color white = Color(0xFFFFFFFF);
  static const Color wifiSettingColor = Color(0xFF333333);
  static const Color playQueuePlayBorderColor = Color(0xFF449987);

  static const Color brand01 = Color(0xFFD3A785);

  static const Color brand02 = Color(0xFFFEBF00);

  static const Color brand03 = Color(0xFF2D7BB8);

  static const Color supportSuccess = Color(0xFF2AAF78);

  static const Color supportError = Color(0xFFF4511E);

  static const Color lightGray = Color.fromRGBO(35, 31, 32, 0.24);

  static const Color darkGray = Color.fromRGBO(35, 31, 32, 0.8);
  static const Color subDialogHeader = Color.fromRGBO(163, 14, 46, 0.8);
  static const Color subDialogTextColor = Color.fromRGBO(238, 238, 238, 1);
  static const Color bannerControlColor = Color.fromRGBO(133, 133, 133, 1);

  static const Color darkPurple = Color.fromRGBO(64, 0, 85, 0.8);
  static const Color darkPurple2 = Color.fromRGBO(78, 0, 72, 0.7);

  static const Color brightTeal = Color.fromRGBO(0, 255, 206, 1);

  static Color fadedWhite = Colors.white.withOpacity(0.8);
  static Color moreFadedWhite = Colors.white.withOpacity(0.5);

  static const List<Color> fusion01 = [Color(0xFF272727), engine];

  static const List<Color> fusion02 = [Color(0xFFEF820D), Color(0xFFF05E23)];

  static const List<Color> placeholder = [
    Color.fromRGBO(35, 31, 32, 0.08),
    Color.fromRGBO(35, 31, 32, 0.16)
  ];

  static const Color overlay = Color.fromRGBO(35, 31, 32, 0.7);

  static const List<Color> greenGradient = [
    Color.fromRGBO(42, 175, 120, 0),
    Color.fromRGBO(42, 175, 120, 0.16)
  ];

  static const List<Color> redGradient = [
    Color.fromRGBO(242, 188, 141, 0),
    Color.fromRGBO(242, 188, 141, 0.24)
  ];

  static const List<Color> greyGradient = [
    Color.fromRGBO(154, 154, 154, 0),
    Color.fromRGBO(154, 154, 154, 0.24)
  ];

  static const List<Color> tabBarGradient = [
    Color.fromRGBO(25, 25, 25, 0),
    Color.fromRGBO(25, 25, 25, 0.7),
    Color.fromRGBO(25, 25, 25, 1)
  ];

  static const List<Color> shareBackGroundGradient = [
    Color.fromRGBO(64, 0, 85, 1.0),
    Color.fromRGBO(25, 25, 25, 1.0),
    Color.fromRGBO(0, 0, 0, 1.0)
  ];

  static const List<Color> backgroundGradient = [
    Colors.transparent,
    Colors.black,
  ];

  static List<Color> whiteGradient = [
    Colors.transparent,
    Colors.grey.shade600,
  ];

  static const List<Color> bottomNavGradient = [
    Colors.transparent,
    Colors.black,
  ];

  static const List<Color> topGradient = [
    Colors.transparent,
    Colors.black38,
  ];

  static const List<Color> topAndBottomGradient = [
    Colors.black54,
    Colors.black87,
  ];

  static const List<Color> secondaryColorGradient = [
    Colors.transparent,
    Color.fromRGBO(39, 39, 39, 0.8),
    secondary
  ];

  static const List<Color> profileColorGradient = [
    darkPurple2,
    Colors.transparent
  ];

  static const List<Color> roomsGradient = [
    Color.fromRGBO(250, 0, 255, 0.01),
    Color.fromRGBO(146, 6, 87, 1),
  ];

  static const List<Color> roomsUpperTopGradient = [
    Colors.black87,
    Colors.black12,
    Colors.transparent,
    Colors.transparent,
    Colors.transparent,
  ];

  static const Color purple = Color.fromRGBO(181, 17, 220, 1);
  static const Color yellow = Color.fromRGBO(222, 255, 0, 1);
}
