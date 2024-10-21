import 'package:flutter/material.dart';
import 'package:islami_project/home/selectedItem.dart';
import 'package:islami_project/home/unselectedItem.dart';
import 'package:islami_project/providers/settingsProvider.dart';
import 'package:provider/provider.dart';

class Languagebottomsheet extends StatelessWidget {
  const Languagebottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Selecteditem(provider.language == "ar"
              ? "العربية"
              : "English"),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){
              provider.changeLanguage(
                provider.language == "ar"
                    ?"en"
                    :"ar"
              );
            },
              child: Unselecteditem(
                  provider.language == "ar"
                      ? "English"
                      : "العربية"
              )),
        ],
      ),
    );
  }
}
