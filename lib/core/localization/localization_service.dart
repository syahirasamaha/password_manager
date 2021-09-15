import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LocalizationService {
  static LocalizationService? of(BuildContext context) {
    return Localizations.of<LocalizationService>(context, LocalizationService);
  }

  late Map<String, String> _localizedValues;

  List<Locale> supportedLocales = [
    const Locale.fromSubtags(languageCode: 'en', countryCode: 'US'),
  ];

  Future<void> load(Locale locale) async {
    final String jsonStringValues = await rootBundle.loadString(
        'asset/locale/strings_${locale.languageCode}_${locale.countryCode}.json');
    final Map<String, dynamic> mappedJson = json.decode(jsonStringValues);
    _localizedValues =
        mappedJson.map((key, value) => MapEntry(key, value.toString()));
  }

  String? translate(String key) {
    return _localizedValues[key];
  }

  // static member to have simple access to the delegate from Material App
  static const LocalizationsDelegate<LocalizationService> delegate =
      _LocalizationServiceDelegate();
}

LocalizationService localizationService = LocalizationService();

class _LocalizationServiceDelegate
    extends LocalizationsDelegate<LocalizationService> {
  const _LocalizationServiceDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en'].contains(locale.languageCode);
  }

  @override
  Future<LocalizationService> load(Locale locale) async {
    final LocalizationService localization = LocalizationService();
    await localization.load(locale);
    return localization;
  }

  @override
  bool shouldReload(LocalizationsDelegate<LocalizationService> old) => false;
}
