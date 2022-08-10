import 'package:auto_size_text/auto_size_text.dart';
import 'package:eyp_cooking_app/Functions/size_config.dart';
import 'package:flutter/material.dart';
import 'SizeConfig.dart';

class NotConnected extends StatefulWidget {
  @override
  _NotConnectedState createState() => _NotConnectedState();
}

class _NotConnectedState extends State<NotConnected> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue[100], //
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              width: SizeConfig.screenWidth * 2 / 5,
              height: SizeConfig.screenHeight * 2 / 5,
              image: AssetImage(
                'images/eyplogo.png',
              ),
            ),
            SizedBox(
              height: SizeConfig.screenHeight / 20,
              width: SizeConfig.screenWidth,
            ),
            AutoSizeText('Wifi is not connected',
                maxFontSize: 15,
                minFontSize: 5,
                style: TextStyle(fontFamily: 'FRED', color: Colors.blue[900])),
            AutoSizeText('Connect and try again!',
                maxFontSize: 15,
                minFontSize: 5,
                style: TextStyle(
                  color: Colors.blue[900],
                  fontFamily: 'FRED',
                )),
            SizedBox(
              height: SizeConfig.screenHeight / 20,
              width: SizeConfig.screenWidth,
            ),
            Center(child: Icon(Icons.wifi_off)),
            SizedBox(
              height: SizeConfig.screenHeight / 20,
              width: SizeConfig.screenWidth,
            ),
            Center(child: CircularProgressIndicator())
          ],
        ));
  }
}
