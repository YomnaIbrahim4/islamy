import 'package:flutter/material.dart';
import 'package:islami_project/home/hadeth.dart';

import '../style/AppStyle.dart';

class AhadethDetailsScreen extends StatelessWidget {
  static const routName = "ahadeth details";

  @override
  Widget build(BuildContext context) {
    Hadeth args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppStyle.isDark
                ? "assets/images/home_dark_background.png"
                :  "assets/images/default_bg.png"
            ),
            fit: BoxFit.fill,
          )

      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.title),
        ),
        body: Column(
          children: [
            Expanded(
              child: Card(
                child: SingleChildScrollView(child: Text(
                    args.content,
                  style: Theme.of(context).textTheme.displayMedium,
                )),
              ),
            ),
          ],
        ),

      ),
    );
  }
}
