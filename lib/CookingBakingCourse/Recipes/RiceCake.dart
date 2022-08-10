import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:eyp_cooking_app/CookingBakingCourse/AllGifs.dart';
import 'package:eyp_cooking_app/Functions/RecipePage.dart';
import 'package:eyp_cooking_app/Functions/SculptingProjectPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

RecipePage RiceCake = new RecipePage();

class RiceCakeRecipe extends StatefulWidget {
  @override
  _RiceCakeRecipeState createState() => _RiceCakeRecipeState();
}

class _RiceCakeRecipeState extends State<RiceCakeRecipe> {
  final recipetabs = [
    RiceCakeI(),
    RiceCakeM(),
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

class RiceCakeI extends StatefulWidget {
  @override
  _RiceCakeIState createState() => _RiceCakeIState();
}

class _RiceCakeIState extends State<RiceCakeI> {
  @override
  BuildContext context;
  final List<String> RiceCakeIngredients = [
    '1 banana',
    '1 rice cake',
    'peanut butter',

  ];

  final List<String> RiceCakeAmazon = [
    'Flour',
    'Oats',
    'Chocolate Chips',
    'Baking soda',
  ];

  Widget build(context) {
    RiceCake.setContext(context);
    RiceCake.buildIngredientSearch(RiceCakeIngredients, RiceCakeAmazon);
    return RiceCake.buildIngredients(
        'https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Puffed_Rice_Cakes.jpg/1200px-Puffed_Rice_Cakes.jpg',
        'RiceCake');
  }
}

class RiceCakeM extends StatefulWidget {
  @override
  _RiceCakeMState createState() => _RiceCakeMState();
}

class _RiceCakeMState extends State<RiceCakeM> {
  @override
  BuildContext context;
  static Color themeColor = SculptingProjectPage.themeColor;
  @override
  final List<String> giphyclips = [
    CBRCR1,
    CBRCR2,
    CBRCR3,
    CBRCR4,
  ];

  Widget build(BuildContext context) {
    RiceCake.setContext(context);
    RiceCake.RecipeParts(
        4, giphyclips, [5], ['', '', '', '', '', '']);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: themeColor,
          title: const Text(''),
        ),
        body:
        RiceCake.VideoCarousel()
    );
  }
}