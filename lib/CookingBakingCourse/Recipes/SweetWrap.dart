import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:eyp_cooking_app/CookingBakingCourse/AllGifs.dart';
import 'package:eyp_cooking_app/Functions/RecipePage.dart';
import 'package:eyp_cooking_app/Functions/SculptingProjectPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

RecipePage SweetWrap = new RecipePage();

class SweetWrapRecipe extends StatefulWidget {
  @override
  _SweetWrapRecipeState createState() => _SweetWrapRecipeState();
}

class _SweetWrapRecipeState extends State<SweetWrapRecipe> {
  final recipetabs = [
    SweetWrapI(),
    SweetWrapM(),
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

class SweetWrapI extends StatefulWidget {
  @override
  _SweetWrapIState createState() => _SweetWrapIState();
}

class _SweetWrapIState extends State<SweetWrapI> {
  @override
  BuildContext context;
  final List<String> SweetWrapIngredients = [
    'banana',
    '1 tsp oil or butter',
    'tortilla wrap',
    'peanut butter',
    'shredded coconut',
    'chocolate chips',

  ];

  final List<String> SweetWrapAmazon = [
    'banana',
    'oil or butter',
    'tortilla wrap',
    'peanut butter',
    'shredded coconut',
    'chocolate chips',
  ];

  Widget build(context) {
    SweetWrap.setContext(context);
    SweetWrap.buildIngredientSearch(SweetWrapIngredients, SweetWrapAmazon);
    return SweetWrap.buildIngredients(
        'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/CookingAndBaking%2FSweetWrap.PNG?alt=media&token=17bf9dae-babc-4205-953d-bf9cccabbf6b',
        'SweetWrap');
  }
}

class SweetWrapM extends StatefulWidget {
  @override
  _SweetWrapMState createState() => _SweetWrapMState();
}

class _SweetWrapMState extends State<SweetWrapM> {
  @override
  BuildContext context;
  static Color themeColor = SculptingProjectPage.themeColor;
  @override
  final List<String> giphyclips = [
    CBSWR1,
    CBSWR2,
    CBSWR3,
    CBSWR4,
    CBSWR5,
    CBSWR6,
    CBSWR7,
    CBSWR8,
    CBSWR9,
    CBSWR10,
    CBSWR11,
    CBSWR12,
  ];

  Widget build(BuildContext context) {
    SweetWrap.setContext(context);
    SweetWrap.RecipeParts(
        12, giphyclips, [5], ['', '', '', '', '', '']);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: themeColor,
          title: const Text(''),
        ),
        body:
        SweetWrap.VideoCarousel()
    );
  }
}