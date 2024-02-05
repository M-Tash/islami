import 'package:flutter/material.dart';
import 'home/quran/sura_details_screen.dart';
import 'home/ahadeth/hadeth_details_screen.dart';
import 'home/home_screen.dart';
import 'my_theme.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName : (context) => HomeScreen(),
        SuraDetailsScreen.routeName : (context) => SuraDetailsScreen(),
        HadethDetailsScreen.routeName :(context) => HadethDetailsScreen(),


      },
      theme: MyTheme.lightMode,
    );
  }
}

