import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:eyp_cooking_app/CookingBakingCourse/AllGifs.dart';
import 'package:eyp_cooking_app/Functions/LoggedInWidget.dart';
import 'package:eyp_cooking_app/Functions/RecipePage.dart';
import 'package:eyp_cooking_app/Functions/SculptingProjectPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

RecipePage Pancake = new RecipePage();

class PancakeRecipe extends StatefulWidget {
  @override
  _PancakeRecipeState createState() => _PancakeRecipeState();
}

class _PancakeRecipeState extends State<PancakeRecipe> {
  final recipetabs = [
    PancakeI(),
    PancakeM(),
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

class PancakeI extends StatefulWidget {
  @override
  _PancakeIState createState() => _PancakeIState();
}

class _PancakeIState extends State<PancakeI> {
  @override
  BuildContext context;
  final List<String> PancakeIngredients = [
    '1/2 cup Oats',
    'Chocolate Chips',
    '1/2 tsp Baking soda',
    '1 banana',
    '1 egg',
    'vanilla extract',
    '1/4 cup milk,'
  ];

  final List<String> PancakeAmazon = [
    'Oats',
    'Chocolate Chips',
    'Baking soda',
    'Banana',
    'Egg',
    'Vanilla extract',
    'Milk,'
  ];

  Widget build(context) {
    Pancake.setContext(context);
    Pancake.buildIngredientSearch(PancakeIngredients, PancakeAmazon);
    return Pancake.buildIngredients(
        'https://exploreyourpassion708434211.files.wordpress.com/2021/02/image-23.png',
        'Pancake');
  }
}

class PancakeM extends StatefulWidget {
  @override
  _PancakeMState createState() => _PancakeMState();
}

class _PancakeMState extends State<PancakeM> {
  BuildContext context;
  static Color themeColor = SculptingProjectPage.themeColor;
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

    Pancake.setContext(context);
    Pancake.RecipeParts(
        17, giphyclips, [5], ['', '', '', '', '', '','']);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: themeColor,
          title: const Text(''),
        ),
        body:
        Pancake.VideoCarousel()
    );
  }
}
