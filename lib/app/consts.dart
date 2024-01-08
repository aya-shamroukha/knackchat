

import 'package:uik/app/app_preferences.dart';
import 'package:uik/app/dependency_injection.dart';

class Constants {
  static AppPreferences appPreferences = instance<AppPreferences>();

  static Future<Map<String, String>> get header async => {
        'Accept': 'application/json',
        'authorization': (await appPreferences.getUserToken()).isNotEmpty
            ? ('${await appPreferences.getUserTokenType()} ${await appPreferences.getUserToken()}')
            : ''
      };

  // static const String baseUrl = "https://tedallal.online/api";

  // static const String imageBaseUrl = "http://tedallal.online/storage";
}

//const String baseUrl = "https://tedallal.online/api";
