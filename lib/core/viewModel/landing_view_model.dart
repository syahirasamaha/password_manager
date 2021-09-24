import 'package:password_manager/core/locator/locator.dart';
import 'package:password_manager/core/model/info.dart';
import 'package:password_manager/core/service/service.dart';
import 'package:password_manager/core/viewModel/base_model.dart';

class LandingViewModel extends BaseModel {
  final Service _service = locator<ServiceImpl>();

  Info? info;

  List<Info>? _info = [];

  bool _isPasswordVisible = true;

  bool get isPasswordVisible => _isPasswordVisible;

  set isPasswordVisible(bool isPasswordVisible) {
    _isPasswordVisible = isPasswordVisible;
    notifyListeners();
  }

  void toggleIsPasswordVisible() {
    isPasswordVisible = !isPasswordVisible;
  }

  void addUserInfo(Info info) {
    _info?.add(info);
    notifyListeners();
  }

  void deleteUserInfo(Info info) {
    _info!.remove(info);
    notifyListeners();
  }

  Future saveUserInfo(
      String? website, String? username, String? password) async {
    List<Info>? _info = List<Info>.from(
        website: website, username: username, password: password);
    addUserInfo(info!);
    bool isSaved = await _service.saveUserInfo(info: _info);
    if (isSaved) {
      addUserInfo(info!);
    }
  }

  Future getUserInfo() async {
    await _service.getUserInfo().then((value) {
      _info = value;
    });
  }
}
