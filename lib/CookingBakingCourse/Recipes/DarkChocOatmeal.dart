import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:eyp_cooking_app/CookingBakingCourse/AllGifs.dart';
import 'package:eyp_cooking_app/Functions/RecipePage.dart';
import 'package:eyp_cooking_app/Functions/SculptingProjectPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

RecipePage DarkChoc = new RecipePage();

class DarkChocRecipe extends StatefulWidget {
  @override
  _DarkChocRecipeState createState() => _DarkChocRecipeState();
}

class _DarkChocRecipeState extends State<DarkChocRecipe> {
  final recipetabs = [
    DarkChocI(),
    DarkChocM(),
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

class DarkChocI extends StatefulWidget {
  @override
  _DarkChocIState createState() => _DarkChocIState();
}

class _DarkChocIState extends State<DarkChocI> {
  @override
  BuildContext context;
  final List<String> DarkChocIngredients = [
    '1 cup oats',
    'water',
    '1/2 cup milk',
    '2 tbsp cocoa powder',
    '1 tbsp shredded coconut',
    '1 tbsp honey or agave syrup'
  ];

  final List<String> DarkChocAmazon = [
    'oats',
    'water',
    'milk',
    'cocoa powder',
    'shredded coconut',
    'honey or agave syrup'
  ];

  Widget build(context) {
    DarkChoc.setContext(context);
    DarkChoc.buildIngredientSearch(DarkChocIngredients, DarkChocAmazon);
    return DarkChoc.buildIngredients(
        'https://www.freshnlean.com/wp-content/uploads/2020/05/dark-chocolate-protein-oatmeal.jpg',
        'Dark Chocolate Oatmeal');
  }
}

class DarkChocM extends StatefulWidget {
  @override
  _DarkChocMState createState() => _DarkChocMState();
}

class _DarkChocMState extends State<DarkChocM> {
  @override
  BuildContext context;
  static Color themeColor = SculptingProjectPage.themeColor;
  @override
  final List<String> giphyclips = [
    DCOR1,
    DCOR2,
    DCOR3,
    DCOR4,
    DCOR5,
    DCOR6,
    DCOR7,
    DCOR8,
    DCOR9,
    DCOR10,
    DCOR11,
    DCOR12,
    DCOR13,
    DCOR14
  ];

  Widget build(BuildContext context) {
    DarkChoc.setContext(context);
    DarkChoc.RecipeParts(
        14, giphyclips, [5], ['', '', '', '', '', '']);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: themeColor,
          title: const Text(''),
        ),
        body:
        DarkChoc.VideoCarousel()
    );
  }
}