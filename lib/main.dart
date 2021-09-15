import 'package:flutter/material.dart';
import 'package:password_manager/ui/view/landing_screen.dart';

void main() {
  runApp(
    PasswordManagerApp(),
  );
}

class PasswordManagerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LandingScreen(),
    );
  }
}
