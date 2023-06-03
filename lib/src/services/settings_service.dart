import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class SettingsService {
  Future<ThemeMode> themeMode();
  Future<void> updateThemeMode(final ThemeMode theme);

  Future<Locale> localeMode();
  Future<void> updateLocaleMode(final Locale locale);
}

class SharedPrefSettingsService extends SettingsService {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  final Map<String, Locale> _localesMap = <String, Locale>{
    'en': const Locale('en'),
    'am': const Locale('am'),
    'ti': const Locale('ti'),
    'ar': const Locale('ar'),
  };

  final String _modeKey = 'theme_mode';
  final String _localeKey = 'locale_mode';

  @override
  Future<Locale> localeMode() async {
    String? locale = (await _prefs).getString(_localeKey);
    return _localesMap[locale] ?? const Locale('en');
  }

  @override
  Future<ThemeMode> themeMode() async {
    String? theme = (await _prefs).getString(_modeKey);
    // return _modesMap[theme] ?? ThemeMode.system;
    return ThemeMode.values.byName(theme ?? ThemeMode.system.name);
  }

  @override
  Future<void> updateLocaleMode(final Locale locale) async {
    _prefs.then(
      (final SharedPreferences prefs) =>
          prefs.setString(_localeKey, locale.toString()),
    );
  }

  @override
  Future<void> updateThemeMode(final ThemeMode theme) async {
    _prefs.then(
      (final SharedPreferences prefs) =>
          prefs.setString(_modeKey, theme.toString().substring(10)),
    );
  }
}

class DefaultSettingsService extends SettingsService {
  @override
  Future<Locale> localeMode() async => const Locale('en');

  @override
  Future<ThemeMode> themeMode() async => ThemeMode.system;

  @override
  Future<void> updateLocaleMode(final Locale locale) async {}

  @override
  Future<void> updateThemeMode(final ThemeMode theme) async {}
}
