import './credits_screen.dart';
import './homepage.dart';
import './start_screen.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setEnabledSystemUIOverlays([]);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartScreen(),
      routes: {
        HomePage.ROUTE_NAME: (context) => HomePage(),
        CreditsScreen.ROUTE_NAME: (context) => CreditsScreen(),
      },
    );
  }
}
