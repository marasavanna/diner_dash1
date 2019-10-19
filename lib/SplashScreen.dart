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
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.1, 0.4, 0.7, 0.9],
                colors: [
                  Color(0xFF3594DD),
                  Color(0xFF4563DB),
                  Color(0xFF5036D5),
                  Color(0xFF5B16D0),
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
                        radius: 100,
                        child: ClipOval(
                          child: Image.asset(
                            "lib/resources/images/app_logo.png",
                            height: 300.0,
                            width: 300.0,
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 20.0)),
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
        _navigateTo("/WelcomeScreen");
      } else {
        _navigateTo("/HomeScreen");
      }
    });
  }

  _navigateTo(String destination){
    Timer(Duration(seconds: 5),
            () => {Navigator.of(context).pushNamed(destination)});
  }
}
