import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:eyp_cooking_app/CookingBakingCourse/AllGifs.dart';
import 'package:eyp_cooking_app/Functions/RecipePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

RecipePage MangoCocoOatmeal = new RecipePage();

class MangoCocoOatmealRecipe extends StatefulWidget {
  @override
  _MangoCocoOatmealRecipeState createState() => _MangoCocoOatmealRecipeState();
}

class _MangoCocoOatmealRecipeState extends State<MangoCocoOatmealRecipe> {
  final recipetabs = [
    MangoCocoOatmealI(),
    MangoCocoOatmealM(),
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

class MangoCocoOatmealI extends StatefulWidget {
  @override
  _MangoCocoOatmealIState createState() => _MangoCocoOatmealIState();
}

class _MangoCocoOatmealIState extends State<MangoCocoOatmealI> {
  @override
  BuildContext context;
  final List<String> MangoCocoOatmealIngredients = [
    '1 cup oats',
    'water',
    '1/2 cup milk',
    '1 tbsp honey or agave syrup',
    '1/2 cup mangoes',
    'Shredded coconut',
  ];

  final List<String> MangoCocoOatmealAmazon = [
    'oats',
    'water',
    'milk',
    'shredded coconut',
    'honey or agave syrup'
  ];

  Widget build(context) {
    MangoCocoOatmeal.setContext(context);
    MangoCocoOatmeal.buildIngredientSearch(
        MangoCocoOatmealIngredients, MangoCocoOatmealAmazon);
    return MangoCocoOatmeal.buildIngredients(
        'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/CookingAndBaking%2Fmango%20oatmeal.jpg?alt=media&token=5e71b01b-cc6a-4e04-b630-c4526ebb8ee9',
        'MangoCocoOatmeal');
  }
}

class MangoCocoOatmealM extends StatefulWidget {
  @override
  _MangoCocoOatmealMState createState() => _MangoCocoOatmealMState();
}

class _MangoCocoOatmealMState extends State<MangoCocoOatmealM> {
  BuildContext context;
  @override
  final List<String> giphyclips = [
    CBPR1,
    CBPR2,
    CBPR3,
    CBPR4,
    CBPR5,
    CBPR6,
    CBPR7,
    CBPR8,
    CBPR9,
    CBPR10,
    CBPR11,
    CBPR12,
    CBPR13,
    CBPR14,
    CBPR15,
    CBPR16,
    CBPR17,
  ];

  Widget build(BuildContext context) {
    MangoCocoOatmeal.setContext(context);
    MangoCocoOatmeal.RecipeParts(
        17, giphyclips, [5], ['', '', '', '', '', '/stoveSkill']);
    return MangoCocoOatmeal.VideoCarousel();
  }
}
