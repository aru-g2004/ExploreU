import 'package:flutter/material.dart';

class FoodSpotlight extends StatefulWidget {
  @override
  _FoodSpotlightState createState() => _FoodSpotlightState();
}

class _FoodSpotlightState extends State<FoodSpotlight> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.purple,
      appBar:
      AppBar(

        title: Text('Food Spotlight'),
        backgroundColor: Colors.purple,

      ),

    );
  }
}