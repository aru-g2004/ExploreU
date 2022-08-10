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
SculptingProjectPage skinnySnakeProject = new SculptingProjectPage();

class skinnySnake extends StatefulWidget {
  @override
  _skinnySnakeState createState() => _skinnySnakeState();
}

class _skinnySnakeState extends State<skinnySnake> {
  final tutorialtabs = [
    skinnySnakeProjectI(),
    skinnySnakeProjectM(),
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

class skinnySnakeProjectI extends StatefulWidget {
  @override
  _skinnySnakeProjectIState createState() => _skinnySnakeProjectIState();
}

class _skinnySnakeProjectIState extends State<skinnySnakeProjectI> {
  @override
   BuildContext context;
  final List<String> skinnySnakeProjectMaterials = [
    'clay',
  ];
  Widget build(context) {
    skinnySnakeProject.setContext(context);
    skinnySnakeProject.buildMaterialSearch(skinnySnakeProjectMaterials);
    return skinnySnakeProject.buildMaterials(
        'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/SculptingClayMiniFigures%2FSkills%2FskinnySnakeThumbnail.PNG?alt=media&token=27177fef-2e00-442b-ab15-5aeac03eb48c',
        'Clay skinnySnake',);
  }
}

class skinnySnakeProjectM extends StatefulWidget {
  @override
  _skinnySnakeProjectMState createState() => _skinnySnakeProjectMState();
}

class _skinnySnakeProjectMState extends State<skinnySnakeProjectM> {
   BuildContext context;
  @override
  static Color themeColor = SculptingProjectPage.themeColor;
  final List<String> giphyclips = [
    GifLinks.skinnySnake1,
    GifLinks.skinnySnake2,
    GifLinks.skinnySnake3,

  ];

  Widget build(BuildContext context) {
    skinnySnakeProject.setContext(context);
    skinnySnakeProject.TutorialParts(
        3, giphyclips, [5], ['', '', '',]);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: themeColor,
          title: const Text(''),
        ),
        body:
          skinnySnakeProject.VideoCarousel()
    );
  }
}