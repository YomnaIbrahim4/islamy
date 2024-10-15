import 'package:flutter/material.dart';
import 'package:islami_project/home/selectedItem.dart';
import 'package:islami_project/home/unselectedItem.dart';

class Languagebottomsheet extends StatelessWidget {
  const Languagebottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Selecteditem(selected:  "English",),
          SizedBox(height: 20,),
          Unselecteditem(unselected: "العربية"),
        ],
      ),
    );
  }
}
