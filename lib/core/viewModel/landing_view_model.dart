import 'package:password_manager/core/locator/locator.dart';
import 'package:password_manager/core/model/info.dart';
import 'package:password_manager/core/service/navigator/navigation_service.dart';
import 'package:password_manager/core/service/service.dart';
import 'package:password_manager/core/viewModel/base_model.dart';

class LandingViewModel extends BaseModel {
  final Service _service = locator<ServiceImpl>();
  final NavigationService _navigationService = locator<NavigationService>();

  Info? info;

  Future getUserProfile() async {
    await _service.getUserInfo().then((value) {
      info = value;
      _service.saveUserInfo(info: info);
    });
  }

  @override
  Future<bool> saveUserInfo({Info? info}) async {
    final bool _status = await _service.saveUserInfo(info: info!);

    return _status;
  }
}
