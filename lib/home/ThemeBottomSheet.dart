import 'package:flutter/material.dart';
import 'package:islami_project/home/selectedItem.dart';
import 'package:islami_project/home/unselectedItem.dart';
import 'package:islami_project/providers/settingsProvider.dart';
import 'package:provider/provider.dart';

class Themebottomsheet extends StatelessWidget {
  const Themebottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Selecteditem(settingsProvider.themeMode == ThemeMode.dark
              ? "Dark"
              : "Light",),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){
              settingsProvider.changeTheme(
                  settingsProvider.themeMode == ThemeMode.dark
                      ? ThemeMode.light
                      : ThemeMode.dark
              );
            },
              child: Unselecteditem(
                  settingsProvider.themeMode == ThemeMode.dark
                  ? "Light"
                  : "Dark")),
        ],
      ),
    );
  }
}
