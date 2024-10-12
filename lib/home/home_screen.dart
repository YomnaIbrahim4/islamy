import 'package:flutter/material.dart';
import 'package:islami_project/home/tabs/ahadeth_tab.dart';
import 'package:islami_project/home/tabs/quran_tab.dart';
import 'package:islami_project/home/tabs/radio_tab.dart';
import 'package:islami_project/home/tabs/sebha_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "Home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<Widget> tabs=[
    QuranTab(),
    AhadethTab(),
    SebhaTab(),
    RadioTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/default_bg.png"),
            fit: BoxFit.fill,
        )

      ),
        child: Scaffold(
          appBar: AppBar(
            title: Text("Islami"),
          ),
          body: tabs[selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
              onTap: (index){
              setState(() {
                selectedIndex = index;
              });
              },
              items: [
                BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                    icon: ImageIcon(
                        AssetImage("assets/images/icon_quran.png"),
                    ),
                  label: "Quran",
                ),
                BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                    icon: ImageIcon(
                        AssetImage("assets/images/icon_hadeth.png"),
                    ),
                  label: "Ahadeth",
                ),
                BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                    icon: ImageIcon(
                        AssetImage("assets/images/icon_sebha.png"),
                    ),
                  label: "Tasbeeh",
                ),
                BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                    icon: ImageIcon(
                        AssetImage("assets/images/icon_radio.png"),
                    ),
                  label: "Radio",
                ),
              ],
          ),
        )
    );
  }
}
