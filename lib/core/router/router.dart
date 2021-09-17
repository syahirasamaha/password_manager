import 'package:flutter/material.dart';
import 'package:password_manager/ui/view/new_item.dart';

class NavRouter {
  static const String createNewItemRoute = 'createnewitemroute';

  static MaterialPageRoute _pageRoute(Widget page, settings) {
    return MaterialPageRoute(
        builder: (BuildContext context) {
          return page;
        },
        settings: settings);
  }

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case createNewItemRoute:
        return _pageRoute(NewItem(), settings);
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
