import 'package:password_manager/core/locator/locator.dart';
import 'package:password_manager/core/sharedpreference/preferences_service.dart';

abstract class Service {
  // Future<LoginResponse> postAppleLogin(
  //     AppleLoginCredential appleLoginCredential);

}

class ServiceImpl implements Service {
  final PreferencesService? _preferencesService =
      locator<PreferencesServiceImpl>();

  // @override
  // Future<LoginResponse> postAppleLogin(
  //     AppleLoginCredential appleLoginCredential) async {
  //   return await _networkService!.postAppleLogin(appleLoginCredential);
  // }

}
