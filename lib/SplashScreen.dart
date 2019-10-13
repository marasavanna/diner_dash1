import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'resources/Styles.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  final String _ftuxCounterKey = "ftux_counter";
  int _ftuxCounter = 0;

  @override
  void initState() {
    super.initState();
    _incrementFTUXCounter();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                // Where the linear gradient begins and ends
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                // Add one stop for each color. Stops should increase from 0 to 1
                stops: [0.3, 0.5, 0.7, 0.8],
                colors: [
                  // Colors are easy thanks to Flutter's Colors class.
                  Colors.pink[300],
                  Colors.pink[400],
                  Colors.pink[400],
                  Colors.pink[300],
                ],
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 80,
                        child: ClipOval(
                          child: Image.asset(
                            "lib/resources/images/logo.png",
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 20.0)),
                      Text(
                        "Diner Dash",
                        style: Styles.titleText,
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(
                        valueColor:
                            new AlwaysStoppedAnimation<Color>(Colors.white)),
                    Padding(padding: EdgeInsets.only(top: 20.0)),
                    Text(
                      "Going out \nfor everyone",
                      style: Styles.subtitleText,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  _incrementFTUXCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _ftuxCounter = (prefs.getInt(_ftuxCounterKey) ?? 0) + 1;
      prefs.setInt(_ftuxCounterKey, _ftuxCounter);
      if (_ftuxCounter <= 1) {
        Timer(Duration(seconds: 5),
            () => {Navigator.of(context).pushNamed("/WelcomeScreen")});
      }
    });
  }
}
