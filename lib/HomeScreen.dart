import 'package:flutter/material.dart';
import 'resources/Styles.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // Where the linear gradient begins and ends
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          // Add one stop for each color. Stops should increase from 0 to 1
          stops: [0.3, 0.5, 0.7, 0.8],
          colors: [
            // Colors are easy thanks to Flutter's Colors class.
            Colors.amber[300],
            Colors.amber[400],
            Colors.pink[400],
            Colors.pink[300],
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[Text("Welcome Home", style: Styles.titleText)],
      ),
    );
  }
}
