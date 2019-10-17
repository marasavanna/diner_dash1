import 'package:flutter/material.dart';
import 'package:flutter_app/HomeScreen.dart';
import 'package:flutter_app/WelcomeScreen.dart';
import 'SplashScreen.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.deepPurpleAccent,
          accentColor: Colors.deepPurpleAccent,
          primaryColorDark: Colors.deepPurpleAccent),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        "/WelcomeScreen": (BuildContext context) => WelcomeScreen(),
        "/HomeScreen": (BuildContext context) => HomeScreen()
      },
    ));
