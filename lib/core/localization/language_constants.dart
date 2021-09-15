import 'package:flutter/material.dart';
import 'package:password_manager/core/locator/locator.dart';
import 'package:password_manager/core/sharedpreference/preferences_service.dart';

String LANGUAGE_CODE = 'language_code';
String COUNTRY_CODE = 'country_code';

Future<Locale> setLocale(String languageCode, String countryCode) async {
  final PreferencesService _preferencesService =
      locator<PreferencesServiceImpl>();
  await _preferencesService.setString(key: LANGUAGE_CODE, value: languageCode);
  await _preferencesService.setString(key: COUNTRY_CODE, value: countryCode);
  return Locale(languageCode, countryCode);
}

Future<Locale> getLocale() async {
  final PreferencesService _preferencesService =
      locator<PreferencesServiceImpl>();
  final String languageCode =
      await _preferencesService.getString(key: LANGUAGE_CODE) ?? 'en';
  final String countryCode =
      await _preferencesService.getString(key: COUNTRY_CODE) ?? 'US';
  return Locale(languageCode, countryCode);
}

// String getString(BuildContext context, String key) {
//   return LocalizationService.of(context).translate(key);
// }
