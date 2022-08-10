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
SculptingProjectPage pizzaProject = new SculptingProjectPage();

class pizza extends StatefulWidget {
  @override
  _pizzaState createState() => _pizzaState();
}

class _pizzaState extends State<pizza> {
  final tutorialtabs = [
    pizzaProjectI(),
    pizzaProjectM(),
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

class pizzaProjectI extends StatefulWidget {
  @override
  _pizzaProjectIState createState() => _pizzaProjectIState();
}

class _pizzaProjectIState extends State<pizzaProjectI> {
  @override
   BuildContext context;
  final List<String> pizzaProjectMaterials = [
    'Red Clay',
    'Light brown/beige clay',
    'Light yellow clay',
    'Brown clay',
    'Green clay',
    'Toothpick/sharp tool',
  ];
  Widget build(context) {
    pizzaProject.setContext(context);
    pizzaProject.buildMaterialSearch(pizzaProjectMaterials);
    return pizzaProject.buildMaterials(
        'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/SculptingClayMiniFigures%2FThumbnails%2Fpizza.jpeg?alt=media&token=315b1d1a-29c9-44e7-b135-3fce9167728b',
        'Clay Pizza',
    );
  }
}

class pizzaProjectM extends StatefulWidget {
  @override
  _pizzaProjectMState createState() => _pizzaProjectMState();
}

class _pizzaProjectMState extends State<pizzaProjectM> {
   BuildContext context;
  @override
  static Color themeColor = SculptingProjectPage.themeColor;
  final List<String> giphyclips = [
    GifLinks.pizza1,
    GifLinks.pizza2,
    GifLinks.pizza3,
    GifLinks.pizza4,
    GifLinks.pizza5,
    GifLinks.pizza6,
    GifLinks.pizza7,
    GifLinks.pizza8,
    GifLinks.pizza9,
    GifLinks.pizza10,
    GifLinks.pizza11,
    GifLinks.pizza13,
    GifLinks.pizza14,


  ];

  Widget build(BuildContext context) {
    pizzaProject.setContext(context);
    pizzaProject.TutorialParts(
        13, giphyclips, [5], ['', '', '/ball', '', '', '','', '/skinnysnake', '', '', '', '','', '', '', '', '',],
    );
    return Scaffold(
        appBar: AppBar(
          backgroundColor: themeColor,
          title: const Text(''),
        ),
        body:
          pizzaProject.VideoCarousel()
    );
  }
}
