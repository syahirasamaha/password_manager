import 'package:flutter/material.dart';
import 'package:password_manager/core/locator/locator.dart';
import 'package:password_manager/ui/view/new_item.dart';

void main() {
  setupLocator();
  runApp(
    PasswordManagerApp(),
  );
}

class PasswordManagerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewItem(),
    );
  }
}
