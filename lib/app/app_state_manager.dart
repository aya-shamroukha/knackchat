import 'package:flutter/material.dart';
import 'app_preferences.dart';
import 'dependency_injection.dart';

class MyAppTab {
  static const int home = 0;
  static const int newsFeed = 1;
  static const int offers = 2;
  static const int profile = 3;
}

class AppStateManager extends ChangeNotifier {
  bool _initialized = false;
  bool _loggedIn = false;
  bool _wantsLogIn = false;
  bool _onBoardingComplete = false;
  bool _itsFirstTime = true;
  int _selectedTab = MyAppTab.home;
  final _appCache = instance<AppPreferences>();

  bool get isInitialized => _initialized;
  bool get isLoggedIn => _loggedIn;
  bool get itsFirstTime => _itsFirstTime;
  bool get isWantsLogIn => _wantsLogIn;
  bool get isOnBoardingComplete => _onBoardingComplete;

  int get getSelectedTab => _selectedTab;


  void initializeApp() async {
    _loggedIn = await _appCache.isUserLoggedIn();
    _itsFirstTime = await _appCache.isItFirstTime();
    _onBoardingComplete = await _appCache.isOnBoardingScreenViewed();
    _initialized = true;
    notifyListeners();
  }

  void isUserLoggedIn() async {
    _loggedIn = await _appCache.isUserLoggedIn();
    notifyListeners();
  }

  void firstTime() async {
    _itsFirstTime = false;
    await _appCache.setItsFirstTime();
    notifyListeners();
  }

  void login() async {
    _loggedIn = true;
    _selectedTab =MyAppTab.home;
    await _appCache.setIsUserLoggedIn();
    notifyListeners();
  }

  void wantsLogIn(bool bool) async {
    _wantsLogIn = bool;
    notifyListeners();
  }

  void onboarded() async {
    _onBoardingComplete = true;
    await _appCache.setOnBoardingScreenViewed();
    notifyListeners();
  }

  void goToTab(index) {
    _selectedTab = index;
    notifyListeners();
  }

  void logout(BuildContext context) async {
    _initialized = false;
    _selectedTab = MyAppTab.home;
    _loggedIn = false;
    await _appCache.invalidate();
    initializeApp();
    notifyListeners();
  }
  void reInitialize(BuildContext context) async {
    _initialized = false;
  }

}
