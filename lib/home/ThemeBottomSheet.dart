import 'package:flutter/material.dart';
import 'package:islami_project/home/selectedItem.dart';
import 'package:islami_project/home/unselectedItem.dart';

class Themebottomsheet extends StatelessWidget {
  const Themebottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Selecteditem(selected:  "Dark",),
          SizedBox(height: 20,),
          Unselecteditem(unselected: "Light"),
        ],
      ),
    );
  }
}
