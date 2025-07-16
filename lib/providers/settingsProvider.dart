import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode themeMode;

  SettingsProvider({required String themeMode})
      : themeMode = themeMode == "dark" ? ThemeMode.dark : ThemeMode.light;

  changeTheme(ThemeMode newMode) async {
    if (themeMode == newMode) return;

    themeMode = newMode;

    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("themeMode", newMode == ThemeMode.dark ? "dark" : "light");

    notifyListeners();
  }

  String language = "en";

  changeLanguage(String newLang) {
    if (newLang == language) return;
    language = newLang;
    notifyListeners();
  }
}
