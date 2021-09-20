import 'package:password_manager/core/model/info.dart';
import 'package:password_manager/core/viewModel/base_model.dart';

class UserInfoViewModel extends BaseModel {
  Info? info;

  bool _isPasswordVisible = true;

  bool get isPasswordVisible => _isPasswordVisible;

  set isPasswordVisible(bool isPasswordVisible) {
    _isPasswordVisible = isPasswordVisible;
    notifyListeners();
  }
}
