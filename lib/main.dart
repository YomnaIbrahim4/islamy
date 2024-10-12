import 'package:flutter/material.dart';
import 'package:islami_project/ahadeth_details/ahadeth_details_screen.dart';
import 'package:islami_project/home/home_screen.dart';
import 'package:islami_project/quran_details/quran_details_screen.dart';

void main() {

  //new version
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )
        ),
        scaffoldBackgroundColor: Colors.transparent,
        cardTheme: CardTheme(
          elevation: 15,
          margin: EdgeInsets.all(20),
          surfaceTintColor: Colors.white,
        ),
        dividerTheme: DividerThemeData(
          color: Color(0xffB7935F),
              thickness: 2,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedIconTheme: IconThemeData(
            color: Colors.black,
            size: 35,
          ),
          selectedItemColor: Colors.black,
          unselectedIconTheme: IconThemeData(
            color: Colors.white,
            size: 35,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
          primary: Color(0xffB7935F),
          secondary: Color(0xffB7935F).withOpacity(0.57),
          onPrimary: Colors.white,
          onSecondary: Colors.black,

        ),
        useMaterial3: true,
      ),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName:(_)=>HomeScreen(),
        QuranDetailsScreen.routeName:(_)=>QuranDetailsScreen(),
        AhadethDetailsScreen.routName:(_)=>AhadethDetailsScreen(),
      },
    );
  }
}

