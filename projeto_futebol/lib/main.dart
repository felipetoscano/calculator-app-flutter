import 'package:flutter/material.dart';
import 'package:projeto_futebol/screens/DetailsScreen.dart';
import 'package:projeto_futebol/screens/InitialScreen.dart';
import 'package:projeto_futebol/screens/TeamsScreen.dart';
import 'package:projeto_futebol/screens/TrophiesScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        
        scaffoldBackgroundColor: Color(0xffe4eddb),
        accentColor: Colors.teal,
        appBarTheme: AppBarTheme(
          color: Color(0xff307672)
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'PesquiCopa',
      initialRoute: '/',
      routes: {
        '/': (context) => InitialScreen(),
        '/teams': (context) => TeamsScreen(),
        '/details': (context) => DetailsScreen(),
        '/trophies': (context) => TrophiesScreen()
      },
    );
  }
}