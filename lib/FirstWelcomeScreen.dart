import 'resources/Styles.dart';
import 'package:flutter/material.dart';

class FirstWelcomeScreen extends StatelessWidget {
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
            'Scan QR code \nto see menu',
            style: Styles.titleText,
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 15.0),
          Text(
            "Your menu is at a scan away - choose from the best this place has to offer",
            style: Styles.descriptionText,
          ),
        ],
      ),
    );
  }
}
