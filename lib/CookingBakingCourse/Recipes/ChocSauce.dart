import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:eyp_cooking_app/CookingBakingCourse/AllGifs.dart';
import 'package:eyp_cooking_app/Functions/RecipePage.dart';
import 'package:eyp_cooking_app/Functions/SculptingProjectPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

RecipePage ChocSauce = new RecipePage();

class ChocSauceRecipe extends StatefulWidget {
  @override
  _ChocSauceRecipeState createState() => _ChocSauceRecipeState();
}

class _ChocSauceRecipeState extends State<ChocSauceRecipe> {
  final recipetabs = [
    ChocSauceI(),
    ChocSauceM(),
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

class ChocSauceI extends StatefulWidget {
  @override
  _ChocSauceIState createState() => _ChocSauceIState();
}

class _ChocSauceIState extends State<ChocSauceI> {
  @override
  BuildContext context;
  final List<String> ChocSauceIngredients = [
    '1 tbsp cocoa powder',
    '1 tbsp peanut butter',
    '1 tbsp honey or agave syrup',
  ];

  final List<String> ChocSauceAmazon = [
    'cocoa powder',
    'peanut butter',
    'honey or agave syrup',
  ];

  Widget build(context) {
    ChocSauce.setContext(context);
    ChocSauce.buildIngredientSearch(ChocSauceIngredients, ChocSauceAmazon);
    return ChocSauce.buildIngredients(
        'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/CookingAndBaking%2FChocolate%20sauce.jpg?alt=media&token=594ccaa7-ab57-4c0c-8bac-dff4343d508a',
        'Dark Chocolate Oatmeal');
  }
}

class ChocSauceM extends StatefulWidget {
  @override
  _ChocSauceMState createState() => _ChocSauceMState();
}

class _ChocSauceMState extends State<ChocSauceM> {
  @override
  BuildContext context;
  static Color themeColor = SculptingProjectPage.themeColor;
  @override
  final List<String> giphyclips = [
    CSR1,
    CSR2,
    CSR3,
    CSR4,
    CSR5,
    CSR6,
  ];

  Widget build(BuildContext context) {
    ChocSauce.setContext(context);
    ChocSauce.RecipeParts(
        6, giphyclips, [5], ['', '', '', '', '', '']);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: themeColor,
          title: const Text(''),
        ),
        body:
        ChocSauce.VideoCarousel()
    );
  }
}