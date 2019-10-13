import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'resources/Styles.dart';

class ThirdWelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image(
              image: AssetImage(
                "lib/resources/images/app_logo.png",
              ),
              height: 300.0,
              width: 300.0,
            ),
          ),
          SizedBox(height: 30.0),
          Text(
            'Link and enjoy!',
            style: Styles.titleText,
          ),
          SizedBox(height: 15.0),
          Text(
            'Link your payment card and enjoy your oder!',
            style: Styles.descriptionText,
          ),
        ],
      ),
    );
  }
}
