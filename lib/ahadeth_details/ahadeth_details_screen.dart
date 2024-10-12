import 'package:flutter/material.dart';
import 'package:islami_project/home/hadeth.dart';

class AhadethDetailsScreen extends StatelessWidget {
  static const routName = "ahadeth details";

  @override
  Widget build(BuildContext context) {
    Hadeth args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/default_bg.png"),
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
                  style: TextStyle(
                    fontSize: 25,
                  ),
                )),
              ),
            ),
          ],
        ),

      ),
    );
  }
}
