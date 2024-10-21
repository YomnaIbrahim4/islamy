import 'package:flutter/material.dart';
import 'package:islami_project/home/LanguageBottomSheet.dart';
import 'package:islami_project/home/ThemeBottomSheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../providers/settingsProvider.dart';


class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider provider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        //scaffold in home screen
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => Languagebottomsheet(),
              );
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                provider.language == "ar" ? "العربية" : "English",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(fontSize: 18),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => Themebottomsheet(),
              );
            },
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                provider.themeMode == ThemeMode.dark ? "Dark" : "Light",
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
