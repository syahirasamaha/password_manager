import 'dart:async';

import 'package:password_manager/core/model/info.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class PreferencesService {
  Future<String?> getString({required String key});

  Future<bool> setString({required String key, required String value});

  Future<bool> saveUserInfo({required List<Info> info});

  Future<List<Info>> getUserInfo();
}

class PreferencesServiceImpl implements PreferencesService {
  static const userInfo = 'user_info';
  final Future<SharedPreferences> prefs = SharedPreferences.getInstance();

  @override
  Future<bool> setString({required String key, required String value}) async {
    final SharedPreferences pref = await prefs;
    return await pref.setString(key, value);
  }

  @override
  Future<String?> getString({required String key}) async {
    final SharedPreferences pref = await prefs;
    return pref.getString(key);
  }

  @override
  Future<bool> saveUserInfo({required List<Info> info}) async {
    final SharedPreferences pref = await prefs;
    return await pref.setString(userInfo, Info().encodeUserList(info));
  }

  @override
  Future<List<Info>> getUserInfo() async {
    final SharedPreferences pref = await prefs;
    final String? infoGetString = pref.getString(userInfo);

    return infoGetString != null
        ? Info().decodeUserList(infoGetString)
        : <Info>[];
  }
}
