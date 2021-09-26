import 'package:password_manager/core/locator/locator.dart';
import 'package:password_manager/core/model/info.dart';
import 'package:password_manager/core/service/service.dart';
import 'package:password_manager/core/viewModel/base_model.dart';

class LandingViewModel extends BaseModel {
  final Service _service = locator<ServiceImpl>();

  Info? info;

  List<Info>? _infos = [];

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
    _infos?.add(info);
    notifyListeners();
  }

  void deleteUserInfo(Info info) {
    _infos!.remove(info);
    notifyListeners();
  }

  Future saveUserInfo(
      String? website, String? username, String? password) async {
    print('$website');
    Info info = Info(website: website, username: username, password: password);
    addUserInfo(info);
    print('${info.website}');
    print(_infos);
    bool isSaved = await _service.saveUserInfo(info: _infos);
    if (isSaved) {
      addUserInfo(info);
    }
    await getUserInfo();
  }

  Future getUserInfo() async {
    await _service.getUserInfo().then((value) {
      _infos = value;
    });
  }

  Future<void> refresh() async {
    await getUserInfo();
  }
}
