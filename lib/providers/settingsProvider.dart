import 'package:flutter/material.dart';

//observable , Publisher
class SettingsProvider extends ChangeNotifier{
  ThemeMode themeMode = ThemeMode.light;

  changeTheme(ThemeMode newMode){
    if(themeMode == newMode)
      return;
    themeMode = newMode;
    notifyListeners();
  }

  String language = "en";

  changeLanguage(String newLang){
    if (newLang == language)
      return;
    language = newLang;
    notifyListeners();

  }




}