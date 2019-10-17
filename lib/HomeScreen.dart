import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'resources/Styles.dart';
import 'package:barcode_scan/barcode_scan.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  String result = "Hey there!";

  @override
  Widget build(BuildContext context) {
    //_scanQR();
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Text(result)],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _scanQR,
        label: Text("Scan"),
        icon: Icon(Icons.camera_alt),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Future _scanQR() async {
    try {
      String _qrResult = await BarcodeScanner.scan();
      setState(() {
        result = _qrResult;
      });
    } on PlatformException catch (ex) {
      if (ex.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          result = "Camera permission denied!";
        });
      } else {
        setState(() {
          result = "Something went wrong $ex";
        });
      }
    } on FormatException catch (ex) {
      setState(() {
        result = "You pressed the back button before scanning!";
      });
    } catch (ex) {
      setState(() {
        result = "Something went wrong $ex";
      });
    }
  }
}
