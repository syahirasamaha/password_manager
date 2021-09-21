import 'package:flutter/material.dart';
import 'package:password_manager/core/locator/locator.dart';
import 'package:password_manager/core/model/info.dart';
import 'package:password_manager/core/service/navigator/navigation_service.dart';
import 'package:password_manager/core/service/service.dart';
import 'package:password_manager/core/viewModel/base_model.dart';

class LandingViewModel extends BaseModel {
  final Service _service = locator<ServiceImpl>();
  final NavigationService _navigationService = locator<NavigationService>();

  TextEditingController? websiteController,
      usernameController,
      passwordController;

  Info? info;

  List<Info>? _info;

  bool _isPasswordVisible = true;

  bool get isPasswordVisible => _isPasswordVisible;

  set isPasswordVisible(bool isPasswordVisible) {
    _isPasswordVisible = isPasswordVisible;
    notifyListeners();
  }

  void deleteUserInfo(Info info) {
    _info!.remove(info);
    notifyListeners();
  }

  Future saveUserInfo(
      String? website, String? username, String? password) async {
    await _service.saveUserInfo(info: info);
    websiteController!.text = info!.website!;
    usernameController!.text = info!.username!;
    passwordController!.text = info!.password!;
  }

  Future getUserInfo() async {
    await _service.getUserInfo().then((value) {
      info = value;
    });
  }
}
