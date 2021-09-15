import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

abstract class PreferencesService {
  Future<String?> getString({required String key});

  Future<bool> setString({required String key, required String value});
}

class PreferencesServiceImpl implements PreferencesService {
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
}
