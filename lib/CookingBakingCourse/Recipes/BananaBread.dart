import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:eyp_cooking_app/CookingBakingCourse/AllGifs.dart';
import 'package:eyp_cooking_app/Functions/RecipePage.dart';
import 'package:eyp_cooking_app/Functions/SculptingProjectPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

RecipePage BananaBread = new RecipePage();

class BananaBreadRecipe extends StatefulWidget {
  @override
  _BananaBreadRecipeState createState() => _BananaBreadRecipeState();
}

class _BananaBreadRecipeState extends State<BananaBreadRecipe> {
  final recipetabs = [
    BananaBreadI(),
    BananaBreadM(),
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

class BananaBreadI extends StatefulWidget {
  @override
  _BananaBreadIState createState() => _BananaBreadIState();
}

class _BananaBreadIState extends State<BananaBreadI> {
  @override
  BuildContext context;
  final List<String> BananaBreadIngredients = [
    '2 bananas',
    '1/3 cup melted cocnut oil',
    '1/4 cup agave syrup',
    '2 eggs',
    '1/4 cup yogurt',
    '1 tsp baking soda',
    '1 tsp vanilla extract',
    '1 tbsp cinnamon',
    '1.5 cup whole wheat flour',
    '(optional) nuts',
    '(optional) chocolate chips',
    'butter',

  ];

  final List<String> BananaBreadAmazon = [
    'Flour',
    'Oats',
    'Chocolate Chips',
    'Baking soda',
  ];

  Widget build(context) {
    BananaBread.setContext(context);
    BananaBread.buildIngredientSearch(
        BananaBreadIngredients, BananaBreadAmazon);
    return BananaBread.buildIngredients(
        'https://theboredteenager304521890.files.wordpress.com/2020/08/banana-bread-amazing.jpg?strip=info&w=900',
        'BananaBread');
  }
}

class BananaBreadM extends StatefulWidget {
  @override
  _BananaBreadMState createState() => _BananaBreadMState();
}

class _BananaBreadMState extends State<BananaBreadM> {
  @override
  BuildContext context;
  static Color themeColor = SculptingProjectPage.themeColor;
  @override
  final List<String> giphyclips = [
    CBBBR1,
    CBBBR2,
    CBBBR3,
    CBBBR4,
    CBBBR5,
    CBBBR6,
    CBBBR7,
    CBBBR8,
    CBBBR9,
    CBBBR10,
    CBBBR11,
    CBBBR12,
    CBBBR13,
    CBBBR14,
    CBBBR15,
    CBBBR16,
    CBBBR17,
    CBBBR18,
  ];

  Widget build(BuildContext context) {
    BananaBread.setContext(context);
    BananaBread.RecipeParts(
        18, giphyclips, [5], ['', '', '', '', '', '/stoveSkill']);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: themeColor,
          title: const Text(''),
        ),
        body:
        BananaBread.VideoCarousel()
    );
  }
}