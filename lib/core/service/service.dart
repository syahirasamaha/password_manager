import 'package:password_manager/core/locator/locator.dart';
import 'package:password_manager/core/model/info.dart';
import 'package:password_manager/core/sharedpreference/preferences_service.dart';

abstract class Service {
  Future<List<Info>> getUserInfo();

  Future<bool> saveUserInfo({required List<Info>? info});
}

class ServiceImpl implements Service {
  final PreferencesService? _preferencesService =
      locator<PreferencesServiceImpl>();

  @override
  Future<List<Info>> getUserInfo() async {
    return await _preferencesService!.getUserInfo();
  }

  @override
  Future<bool> saveUserInfo({required List<Info>? info}) async {
    final bool _status =
        await _preferencesService?.saveUserInfo(info: info!) ?? false;
    return _status;
  }
}
