import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:eyp_cooking_app/CookingBakingCourse/AllGifs.dart';
import 'package:eyp_cooking_app/Functions/RecipePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

RecipePage StoveSafety = new RecipePage();

class StoveSafetySkill extends StatefulWidget {
  @override
  _StoveSafetySkillState createState() => _StoveSafetySkillState();
}

class _StoveSafetySkillState extends State<StoveSafetySkill> {
  final recipetabs = [
    StoveSafetySkillI(),
    StoveSafetySkillM(),
  ];

  int currentIndex = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      body: recipetabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: RecipePage.themeColor,
        currentIndex: currentIndex,
        iconSize: 35,
        selectedFontSize: 15,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.panorama),
              label: 'recipe',
              backgroundColor: Colors.cyan[100]),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_collection_rounded),
            label: 'video',
            backgroundColor: Colors.red[100],
          ),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}

class StoveSafetySkillI extends StatefulWidget {
  @override
  _StoveSafetySkillIState createState() => _StoveSafetySkillIState();
}

class _StoveSafetySkillIState extends State<StoveSafetySkillI> {
  @override
  BuildContext context;
  final List<String> StoveSafetyIngredients = [
    'stove'
  ];

  final List<String> StoveSafetyAmazon = [
    'Stove'
  ];

  Widget build(context) {
    StoveSafety.setContext(context);
    StoveSafety.buildIngredientSearch(
        StoveSafetyIngredients, StoveSafetyAmazon);
    return StoveSafety.buildIngredients(
        'https://exploreyourpassion708434211.files.wordpress.com/2021/06/image-30.png',
        'Stove Safety');
  }
}

class StoveSafetySkillM extends StatefulWidget {
  @override
  _StoveSafetySkillMState createState() => _StoveSafetySkillMState();
}

class _StoveSafetySkillMState extends State<StoveSafetySkillM> {
  @override
  BuildContext context;
  @override
  final List<String> giphyclips = [
    stoveSafety1,
    stoveSafety2,
    stoveSafety3,
    stoveSafety4,
    stoveSafety5,
  ];

  Widget build(BuildContext context) {
    StoveSafety.setContext(context);
    StoveSafety.RecipeParts(
        5, giphyclips, [5], ['', '', '', '', '', '/stoveSkill']);
    return StoveSafety.VideoCarousel();
  }
}
