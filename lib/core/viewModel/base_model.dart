import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:password_manager/core/enum/view_state.dart';
import 'package:password_manager/core/locator/locator.dart';
import 'package:password_manager/core/service/navigator/navigation_service.dart';
import 'package:password_manager/core/service/service.dart';

class BaseModel extends ChangeNotifier {
  ViewState? _state;

  ViewState? get state => _state;

  void setState(ViewState? newState) {
    _state = newState;
    notifyListeners();
  }

  final Service? _service = locator<ServiceImpl>();

  final NavigationService? _navigationService = locator<NavigationService>();

  @override
  void dispose() {
    super.dispose();
  }
}
