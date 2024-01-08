// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uik/utilities/constant/languge_manger.dart';

const String PREFS_KEY_LANG = 'PREFS_KEY_LANG';
const String PREFS_KEY_ON_BOARDING_SCREEN = 'PREFS_KEY_ON_BOARDING_SCREEN';
const String PREFS_KEY_IS_USER_LOGGED_IN = 'PREFS_KEY_IS_USER_LOGGED_IN';
const String PREFS_KEY_IS_COMMERCIAL_PROFILE = 'PREFS_KEY_IS_COMMERCIAL_PROFILE';
const String PREFS_KEY_COMMERCIAL_PROFILE_TYPE = 'PREFS_KEY_COMMERCIAL_PROFILE_TYPE';
const String PREFS_KEY_ITS_FIRST_TIME = 'PREFS_KEY_ITS_FIRST_TIME';
const String PREFS_KEY_IS_USER_SKIPPED = 'PREFS_KEY_IS_USER_SKIPPED';
const String PREFS_KEY_TOKEN = 'PREFS_KEY_TOKEN';
const String PREFS_KEY_TOKEN_TYPE = 'PREFS_KEY_TOKEN_TYPE';
const String PREFS_KEY_AUTH = 'PREFS_KEY_AUTH';
const String DARK_MODE = 'DARK_MODE';

class AppPreferences {
  final SharedPreferences _sharedPreferences;

  AppPreferences(this._sharedPreferences);

  Future<String> getAppLanguage() async {
    String? language = _sharedPreferences.getString(PREFS_KEY_LANG);
    if (language != null && language.isNotEmpty) {
      return language;
    } else {
      return LanguageType.ENGLISH.getValue();
    }
  }

  Future<void> setAppLanguage({required String lang}) async {
    String currentLanguage = await getAppLanguage();
    if (lang == currentLanguage) {} else {
      _sharedPreferences.setString(PREFS_KEY_LANG, lang);
    }
  }

  Future<Locale> getLocal() async {
    String currentLanguage = await getAppLanguage();
    if (currentLanguage == LanguageType.ARABIC.getValue()) {
      return ARABIC_LOCAL;
    } else {
      return ENGLISH_LOCAL;
    }
  }

  Future<void> setDarkMode(bool value) async {
    _sharedPreferences.setBool(DARK_MODE, value);
  }

  Future<bool> isDarkMode() async {
    return _sharedPreferences.getBool(DARK_MODE) ?? false;
  }

  Future<void> setBool(bool value,String key) async {
    _sharedPreferences.setBool(key, value);
  }

  Future<bool> getBool(String key) async {
    return _sharedPreferences.getBool(key) ?? false;
  }

  Future<void> setOnBoardingScreenViewed() async {
    _sharedPreferences.setBool(PREFS_KEY_ON_BOARDING_SCREEN, true);
  }

  Future<bool> isOnBoardingScreenViewed() async {
    return _sharedPreferences.getBool(PREFS_KEY_ON_BOARDING_SCREEN) ?? false;
  }

  Future<void> setUserToken(String token) async {
    _sharedPreferences.setString(PREFS_KEY_TOKEN, token);
  }

  Future<String> getUserToken() async {
    return _sharedPreferences.getString(PREFS_KEY_TOKEN) ?? ' ';
  }

  Future<void> setUserTokenType(String token) async {
    _sharedPreferences.setString(PREFS_KEY_TOKEN_TYPE, token);
  }

  Future<String> getUserTokenType() async {
    return _sharedPreferences.getString(PREFS_KEY_TOKEN_TYPE) ?? ' ';
  }

  Future<void> setIsUserLoggedIn() async {
    _sharedPreferences.setBool(PREFS_KEY_IS_USER_LOGGED_IN, true);
  }

  Future<bool> isUserLoggedIn() async {
    return _sharedPreferences.getBool(PREFS_KEY_IS_USER_LOGGED_IN) ?? false;
  }

  Future<void> setItsFirstTime() async {
    _sharedPreferences.setBool(PREFS_KEY_ITS_FIRST_TIME, false);
  }

  Future<bool> isItFirstTime() async {
    return _sharedPreferences.getBool(PREFS_KEY_ITS_FIRST_TIME) ?? true;
  }

  Future<void> setLocalData(String key,String data) async {
    _sharedPreferences.setString(key, data);
  }

  Future<String> getLocalData(String key) async {
    return _sharedPreferences.getString(key) ?? '';
  }

  Future<void> invalidate() async {
    await _sharedPreferences.setBool(PREFS_KEY_IS_USER_LOGGED_IN, false);
    await _sharedPreferences.setBool(PREFS_KEY_IS_USER_SKIPPED, false);
  }
}
