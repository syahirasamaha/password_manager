import 'package:flutter/material.dart';
import 'package:password_manager/ui/style/theme_color.dart';

class MavenProStyle {
  MavenProStyle._();

  static TextStyle defaultStyle =
      const TextStyle(fontFamily: 'Maven Pro', color: ThemeColor.white);

  static TextStyle main300 = defaultStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w300,
  );

  static TextStyle main400 = defaultStyle.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static TextStyle main500 = defaultStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static TextStyle main700 = defaultStyle.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  static TextStyle main600 = defaultStyle.copyWith(
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );
}
