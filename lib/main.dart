import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_project/ahadeth_details/ahadeth_details_screen.dart';
import 'package:islami_project/home/home_screen.dart';
import 'package:islami_project/providers/settingsProvider.dart';
import 'package:islami_project/quran_details/quran_details_screen.dart';
import 'package:islami_project/style/AppStyle.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  final themeMode = prefs.getString("themeMode") ?? "light";

  runApp(ChangeNotifierProvider(
    create: (context) => SettingsProvider(themeMode: themeMode),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      title: "Islamy",
      theme: AppStyle.lightTheme,
      darkTheme: AppStyle.darkTheme,
      themeMode: settingsProvider.themeMode,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("en"), // English
        Locale("ar"), // Arabic
      ],
      locale: Locale(settingsProvider.language),
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        QuranDetailsScreen.routeName: (_) => QuranDetailsScreen(),
        AhadethDetailsScreen.routName: (_) => AhadethDetailsScreen(),
      },
    );
  }
}
