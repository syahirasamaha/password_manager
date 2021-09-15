import 'package:flutter/material.dart';

class GothamRoundedStyle {
  GothamRoundedStyle._();

  static TextStyle defaultStyle = const TextStyle(fontFamily: 'Gotham Rounded');

  static TextStyle main300 = defaultStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w300,
  );

  static TextStyle main400 = defaultStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static TextStyle main500 = defaultStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static TextStyle main700 = defaultStyle.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );
}
