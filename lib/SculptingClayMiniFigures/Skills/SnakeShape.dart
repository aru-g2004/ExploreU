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
SculptingProjectPage snakeShapeProject = new SculptingProjectPage();

class snakeShape extends StatefulWidget {
  @override
  _snakeShapeState createState() => _snakeShapeState();
}

class _snakeShapeState extends State<snakeShape> {
  final tutorialtabs = [
    snakeShapeProjectI(),
    snakeShapeProjectM(),
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

class snakeShapeProjectI extends StatefulWidget {
  @override
  _snakeShapeProjectIState createState() => _snakeShapeProjectIState();
}

class _snakeShapeProjectIState extends State<snakeShapeProjectI> {
  @override
   BuildContext context;
  final List<String> snakeShapeProjectMaterials = [
    'clay',
  ];
  Widget build(context) {
    snakeShapeProject.setContext(context);
    snakeShapeProject.buildMaterialSearch(snakeShapeProjectMaterials);
    return snakeShapeProject.buildMaterials(
        'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/SculptingClayMiniFigures%2FSkills%2FsnakeThumbnail.PNG?alt=media&token=25172198-393d-4494-bfbd-fe3e8bad9e57',
        'Clay snakeShape',
);
  }
}

class snakeShapeProjectM extends StatefulWidget {
  @override
  _snakeShapeProjectMState createState() => _snakeShapeProjectMState();
}

class _snakeShapeProjectMState extends State<snakeShapeProjectM> {
   BuildContext context;
  @override
  static Color themeColor = SculptingProjectPage.themeColor;
  final List<String> giphyclips = [
    GifLinks.snakeShape,
    GifLinks.snakeShape2,


  ];

  Widget build(BuildContext context) {
    snakeShapeProject.setContext(context);
    snakeShapeProject.TutorialParts(
        2, giphyclips, [5], ['','']);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: themeColor,
          title: const Text(''),
        ),
        body:
          snakeShapeProject.VideoCarousel()
    );
  }
}