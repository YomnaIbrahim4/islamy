import 'package:flutter/material.dart';
import 'package:islami_project/home/LanguageBottomSheet.dart';
import 'package:islami_project/home/ThemeBottomSheet.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column( //scaffold in home screen
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Language",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(height: 10,),
          GestureDetector(
            onTap: (){
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
                "English",
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontSize: 18
                ),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Text(
            "Theme",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(height: 10,),
          GestureDetector(
            onTap: (){
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
                "Dark",
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontSize: 18
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
