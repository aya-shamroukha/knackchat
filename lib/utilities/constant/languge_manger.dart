
import 'package:flutter/material.dart';
import 'package:uik/utilities/constant/text.dart';


enum LanguageType { ENGLISH, ARABIC}

const String ARABIC = 'ar';
const String ENGLISH = 'en';
const String ASSETS_PATH_LOCALISATION = "assets/translation";
const Locale ARABIC_LOCAL = Locale("ar");
const Locale ENGLISH_LOCAL = Locale("en");

extension LanguageTypeExtension on LanguageType {
  String getValue() {
    switch (this) {
      case LanguageType.ENGLISH:
        return ENGLISH;
      case LanguageType.ARABIC:
        return ARABIC;
    }
  }
}

extension LanguageTypeLocalExtension on LanguageType {
  Locale getLocal() {
    switch (this) {
      case LanguageType.ENGLISH:
        return ENGLISH_LOCAL;
      case LanguageType.ARABIC:
        return ARABIC_LOCAL;
    }
  }
}

extension LanguageTypeNameExtension on LanguageType {
  String getName() {
    switch (this) {
      case LanguageType.ENGLISH:
        return HeaderText().english;
      case LanguageType.ARABIC:
        return HeaderText().arabic;
    }
  }
}
