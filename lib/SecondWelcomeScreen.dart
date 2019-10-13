import 'resources/Styles.dart';
import 'package:flutter/material.dart';

class SecondWelcomeScreen extends StatelessWidget {
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
            'Place your order\nand choose your tip!',
            style: Styles.titleText,
          ),
          SizedBox(height: 15.0),
          Text(
            'Choose your order for today and pick an appropiate tip for your personal order!',
            style: Styles.descriptionText,
          ),
        ],
      ),
    );
  }
}
