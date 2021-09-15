import 'package:cupertino_will_pop_scope/cupertino_will_pop_scope.dart';
import 'package:flutter/material.dart';
import 'package:password_manager/ui/style/theme_color.dart';

final ThemeData defaultThemeData = ThemeData(
    primaryColor: ThemeColor.engine,
    fontFamily: 'Lato',
    accentColor: ThemeColor.secondary,
    scaffoldBackgroundColor: ThemeColor.engine,
    appBarTheme: const AppBarTheme(color: ThemeColor.white, elevation: 0),
    primaryTextTheme: TextTheme(headline6: TextStyle(color: ThemeColor.white)),
    textTheme: TextTheme(
      bodyText2: TextStyle(color: ThemeColor.white),
    ),
    primaryIconTheme: const IconThemeData.fallback().copyWith(
      color: ThemeColor.white,
    ),
    iconTheme: IconThemeData(color: ThemeColor.white, opacity: 1.0, size: 50.0),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: ZoomPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoWillPopScopePageTransionsBuilder(),
      },
    ));
