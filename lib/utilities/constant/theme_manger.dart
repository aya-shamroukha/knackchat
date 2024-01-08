
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeMode _currentTheme = ThemeMode.light;

  ThemeMode get currentTheme => _currentTheme;

  void toggleTheme() {
    _currentTheme = _currentTheme == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
// class ThemeManger with ChangeNotifier{
//   ThemeMode _themeMode=ThemeMode.light;
//   get themeMode=>_themeMode;
//   toogleTheme(bool isdark){
//     _themeMode=isdark?ThemeMode.dark:ThemeMode.light;
//     notifyListeners();
//   }
// }
// class ThemeProvider extends ChangeNotifier{
//   ThemeMode themeMode=ThemeMode.dark;
//   bool get isDarkMode=>themeMode==ThemeMode.dark;
//   void toogleTheme(bool isOn){
// themeMode=isOn?ThemeMode.dark:ThemeMode.light;
// notifyListeners();
//   }
// }