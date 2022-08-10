import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:eyp_cooking_app/CookingBakingCourse/AllGifs.dart';
import 'package:eyp_cooking_app/Functions/RecipePage.dart';
import 'package:eyp_cooking_app/Functions/SculptingProjectPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

RecipePage BerrySmoothie = new RecipePage();

class BerrySmoothieRecipe extends StatefulWidget {
  @override
  _BerrySmoothieRecipeState createState() => _BerrySmoothieRecipeState();
}

class _BerrySmoothieRecipeState extends State<BerrySmoothieRecipe> {
  final recipetabs = [
    BerrySmoothieI(),
    BerrySmoothieM(),
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

class BerrySmoothieI extends StatefulWidget {
  @override
  _BerrySmoothieIState createState() => _BerrySmoothieIState();
}

class _BerrySmoothieIState extends State<BerrySmoothieI> {
  @override
  BuildContext context;
  final List<String> BerrySmoothieIngredients = [
    '1 cup berries',
    '1 cup water',
    '1 tsp honey or agave syrup',
  ];

  final List<String> BerrySmoothieAmazon = [
    'Berries',
    'Water',
    'Honey or agave syrup',
  ];

  Widget build(context) {
    BerrySmoothie.setContext(context);
    BerrySmoothie.buildIngredientSearch(
        BerrySmoothieIngredients, BerrySmoothieAmazon);
    return BerrySmoothie.buildIngredients(
        'https://cdn.pixabay.com/photo/2015/05/15/19/13/smoothie-769157_960_720.jpg',
        'BerrySmoothie');
  }
}

class BerrySmoothieM extends StatefulWidget {
  @override
  _BerrySmoothieMState createState() => _BerrySmoothieMState();
}

class _BerrySmoothieMState extends State<BerrySmoothieM> {
  BuildContext context;
  static Color themeColor = SculptingProjectPage.themeColor;
  @override
  final List<String> giphyclips = [
    CBBSR1,
    CBBSR2,
    CBBSR3,
    CBBSR4,
    CBBSR5,
    CBBSR6,
    CBBSR7,
    CBBSR8,
  ];

  Widget build(BuildContext context) {
    BerrySmoothie.setContext(context);
    BerrySmoothie.RecipeParts(
        8, giphyclips, [5], ['', '', '', '', '', '']);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: themeColor,
          title: const Text(''),
        ),
        body:
        BerrySmoothie.VideoCarousel()
    );
  }
}