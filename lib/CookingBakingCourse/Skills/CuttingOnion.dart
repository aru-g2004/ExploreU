import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:eyp_cooking_app/CookingBakingCourse/AllGifs.dart';
import 'package:eyp_cooking_app/Functions/RecipePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

RecipePage CuttingOnion = new RecipePage();

class CuttingOnionSkill extends StatefulWidget {
  @override
  _CuttingOnionSkillState createState() => _CuttingOnionSkillState();
}

class _CuttingOnionSkillState extends State<CuttingOnionSkill> {
  final recipetabs = [
    CuttingOnionSkillI(),
    CuttingOnionSkillM(),
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

class CuttingOnionSkillI extends StatefulWidget {
  @override
  _CuttingOnionSkillIState createState() => _CuttingOnionSkillIState();
}

class _CuttingOnionSkillIState extends State<CuttingOnionSkillI> {
  @override
  BuildContext context;
  final List<String> CuttingOnionIngredients = [
    'onion',
    'cutting board',
    'knife'
  ];

  final List<String> CuttingOnionAmazon = [
    'onion',
    'cutting board',
    'knife'
  ];

  Widget build(context) {
    CuttingOnion.setContext(context);
    CuttingOnion.buildIngredientSearch(
        CuttingOnionIngredients, CuttingOnionAmazon);
    return CuttingOnion.buildIngredients(
        'https://exploreyourpassion708434211.files.wordpress.com/2021/06/image-18.png',
        'Cutting Onions');
  }
}

class CuttingOnionSkillM extends StatefulWidget {
  @override
  _CuttingOnionSkillMState createState() => _CuttingOnionSkillMState();
}

class _CuttingOnionSkillMState extends State<CuttingOnionSkillM> {
  @override
  BuildContext context;
  @override
  final List<String> giphyclips = [
    onion1,
    onion2,
    onion3,
    onion4,
    onion5,
    onion6,
  ];

  Widget build(BuildContext context) {
    CuttingOnion.setContext(context);
    CuttingOnion.RecipeParts(
        6, giphyclips, [5], ['', '', '', '', '', '/stoveSkill']);

    return CuttingOnion.VideoCarousel();
  }
}
