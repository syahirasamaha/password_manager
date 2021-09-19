import 'package:password_manager/core/locator/locator.dart';
import 'package:password_manager/core/model/info.dart';
import 'package:password_manager/core/service/navigator/navigation_service.dart';
import 'package:password_manager/core/service/service.dart';
import 'package:password_manager/core/viewModel/base_model.dart';

class LandingViewModel extends BaseModel {
  final Service _service = locator<ServiceImpl>();
  final NavigationService _navigationService = locator<NavigationService>();

  Info? info;

  Future getUserInfo() async {
    await _service.getUserInfo().then((value) {
      info = value;
    });
  }
}
