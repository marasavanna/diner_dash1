import 'package:flutter/material.dart';
import 'package:flutter_app/HomeScreen.dart';
import 'package:flutter_app/WelcomeScreen.dart';
import 'SplashScreen.dart';

void main() => runApp(MaterialApp(
      home: SplashScreen(),
      routes: <String, WidgetBuilder>{
        "/WelcomeScreen": (BuildContext context) => WelcomeScreen(),
        "/HomeScreen": (BuildContext context) => HomeScreen()
      },
    ));
