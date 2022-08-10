import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:eyp_cooking_app/CookingBakingCourse/AllGifs.dart';
import 'package:eyp_cooking_app/Functions/RecipePage.dart';
import 'package:eyp_cooking_app/Functions/SculptingProjectPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

RecipePage AppleCinnamonOatmeal = new RecipePage();

class AppleCinnamonOatmealRecipe extends StatefulWidget {
  @override
  _AppleCinnamonOatmealRecipeState createState() =>
      _AppleCinnamonOatmealRecipeState();
}

class _AppleCinnamonOatmealRecipeState
    extends State<AppleCinnamonOatmealRecipe> {
  final recipetabs = [
    AppleCinnamonOatmealI(),
    AppleCinnamonOatmealM(),
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

class AppleCinnamonOatmealI extends StatefulWidget {
  @override
  _AppleCinnamonOatmealIState createState() => _AppleCinnamonOatmealIState();
}

class _AppleCinnamonOatmealIState extends State<AppleCinnamonOatmealI> {
  @override
   BuildContext context;
  final List<String> AppleCinnamonOatmealIngredients = [
    '1 apple',
    '1 cup oats',
    '1/2 cup water',
    '1 tsp cinnamon',
    '1/2 cup milk',
    '1 tbsp honey or agave syrup',
    '(optiona) Shredded coconut',
  ];

  final List<String> AppleCinnamonOatmealAmazon = [
    'Apple',
    'Oats',
    'Water',
    'Cinnamon',
    'Milk',
    'Honey or agave syrup',
    'Shredded coconut',
  ];

  Widget build(context) {
    AppleCinnamonOatmeal.setContext(context);
    AppleCinnamonOatmeal.buildIngredientSearch(
        AppleCinnamonOatmealIngredients, AppleCinnamonOatmealAmazon);
    return AppleCinnamonOatmeal.buildIngredients(
        'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/CookingAndBaking%2FApple%20cinnamon%20oatmeal.jpg?alt=media&token=fc8cf6ae-4871-46b5-b653-d36516cb6979',
        'AppleCinnamonOatmeal');
  }
}

class AppleCinnamonOatmealM extends StatefulWidget {
  @override
  _AppleCinnamonOatmealMState createState() => _AppleCinnamonOatmealMState();
}

class _AppleCinnamonOatmealMState extends State<AppleCinnamonOatmealM> {
  @override
   BuildContext context;
  static Color themeColor = SculptingProjectPage.themeColor;
  @override
  final List<String> giphyclips = [
    CBACOR1,
    CBACOR2,
    CBACOR3,
    CBACOR4,
    CBACOR5,
    CBACOR6,
    CBACOR7,
    CBACOR8,
    CBACOR9,
    CBACOR10,
    CBACOR11,
    CBACOR12,
    CBACOR13,
  ];

  Widget build(BuildContext context) {
    AppleCinnamonOatmeal.setContext(context);
    AppleCinnamonOatmeal.RecipeParts(
        13, giphyclips, [5], ['', '', '', '', '', '/stoveSkill']);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: themeColor,
          title: const Text(''),
        ),
        body:
        AppleCinnamonOatmeal.VideoCarousel()
    );
  }
}