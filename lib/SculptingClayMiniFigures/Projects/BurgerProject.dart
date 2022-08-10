import 'package:auto_size_text/auto_size_text.dart';
import 'package:eyp_cooking_app/Functions/SculptingProjectPage.dart';
import 'package:eyp_cooking_app/Functions/size_config.dart';
import 'package:eyp_cooking_app/Services/SizeConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:eyp_cooking_app/Functions/VideoPlayer.dart';
import 'package:flutter/material.dart';
import 'package:eyp_cooking_app/Functions/GifLinks.dart';
import 'package:video_player/video_player.dart';
import 'package:eyp_cooking_app/Functions/VideoControllers.dart';
SculptingProjectPage BurgerProject = new SculptingProjectPage();

class Burger extends StatefulWidget {
  @override
  _BurgerState createState() => _BurgerState();
}

class _BurgerState extends State<Burger> {
  final tutorialtabs = [
    BurgerProjectI(),
    BurgerProjectM(),
  ];
  int currentIndex = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      body: tutorialtabs[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: SculptingProjectPage.themeColor,
        currentIndex: currentIndex,
        iconSize: 35,
        selectedFontSize: 15,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.panorama),
              label: 'Tutorial',
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

class BurgerProjectI extends StatefulWidget {
  @override
  _BurgerProjectIState createState() => _BurgerProjectIState();
}

class _BurgerProjectIState extends State<BurgerProjectI> {
  @override
 BuildContext context;
  static Color themeColor = SculptingProjectPage.themeColor;
  final List<String> BurgerProjectMaterials = [
    'light brown/beige clay',
    'dark brown clay',
    'green clay',
    'red clay',
    'yellow clay',
    'white clay',
    'toothpick/any sharp tool',

  ];
  Widget build(context) {
    BurgerProject.setContext(context);
    BurgerProject.buildMaterialSearch(BurgerProjectMaterials);
    return BurgerProject.buildMaterials(
        'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/SculptingClayMiniFigures%2FThumbnails%2Fburger.jpeg?alt=media&token=4dc973b6-2a67-4ab9-8325-79a92d2bb098',
        'Clay Burger'
    );
  }
}

class BurgerProjectM extends StatefulWidget {
  @override
  _BurgerProjectMState createState() => _BurgerProjectMState();
}

class _BurgerProjectMState extends State<BurgerProjectM> {
   BuildContext context;
  @override
  static Color themeColor = SculptingProjectPage.themeColor;
  final List<String> giphyclips = [
    GifLinks.burger1,
    GifLinks.burger2,
    GifLinks.burger3,
    GifLinks.burger4,
    GifLinks.burger5,
    GifLinks.burger6,
    GifLinks.burger7,
    GifLinks.burger8,
    GifLinks.burger9,
    GifLinks.burger10,
    GifLinks.burger11,
    GifLinks.burger12,
    GifLinks.burger13,
    GifLinks.burger14,
    GifLinks.burger15,
    GifLinks.burger16,
    GifLinks.burger17,
    GifLinks.burger18,
    GifLinks.burger19,
    GifLinks.burger20,
    GifLinks.burger21,
    GifLinks.burger22,
    GifLinks.burger23,
    GifLinks.burger24,
    GifLinks.burger25,

  ];

  Widget build(BuildContext context) {
    BurgerProject.setContext(context);
    BurgerProject.TutorialParts(
        25, giphyclips, [5], ['', '', '', '', '', '','', '', '', '', '', '','','','','','','','','','','','','',''],
    );

    return Scaffold(
        appBar: AppBar(
          backgroundColor: themeColor,
          title: const Text(''),
        ),
        body:
          BurgerProject.VideoCarousel()
    );
  }
}
