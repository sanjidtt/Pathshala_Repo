// @dart=2.9

import 'package:flutter/material.dart';

import 'screens/bangla_number_list_screen.dart';
import 'screens/bangla_vowel_list_screeen.dart';
import 'screens/canvas_screen.dart';
import 'screens/canvas_screen_trial_2.dart';
import 'screens/dashboard_screen.dart';
import 'screens/english_number_list_screen.dart';
import 'screens/login_screen.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pathshala',
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        DashboardScreen.id: (context) => DashboardScreen(),
        CanvasScreen.id: (context) => CanvasScreen(),
        CanvasScreenTrial2.id: (context) => CanvasScreenTrial2(),
        EnglishNumberListScreen.id: (context) => EnglishNumberListScreen(),
        BanglaVowelListScreen.id: (context) => BanglaVowelListScreen(),
        BanglaNumberListScreen.id: (context) => BanglaNumberListScreen(),
      },
    );
  }
}
