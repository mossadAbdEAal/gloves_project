import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class UiProvider extends ChangeNotifier {
  bool _isDark = false;
  bool get isDark => _isDark;

  // late SharedPreferences storage;

  //Custom dark theme
  final darkTheme = ThemeData(
    appBarTheme: const AppBarTheme(backgroundColor: Color(0xff1D2D44)),
    scaffoldBackgroundColor: const Color(0xff1D2D44),
    primaryColor: Colors.white,
    brightness: Brightness.dark,
    primaryColorDark: Colors.white,
    cardTheme: const CardTheme(color: Color(0xffF2F2F2)),
  );

  //Custom light theme
  final lightTheme = ThemeData(
      primaryColor: Colors.white,
      cardTheme: const CardTheme(color: Color(0xffF2F2F2)),
      brightness: Brightness.light,
      primaryColorDark: Colors.white);

  //Now we want to save the last changed theme value

  //Dark mode toggle action
  changeTheme() {
    _isDark = !isDark;

    //Save the value to secure storage
    // storage.setBool("isDark", _isDark);
    notifyListeners();
  }

  //Init method of provider
  init() async {
    //After we re run the app
    // storage = await SharedPreferences.getInstance();
    // _isDark = storage.getBool("isDark") ?? false;
    notifyListeners();
  }
}
