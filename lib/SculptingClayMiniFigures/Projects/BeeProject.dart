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
SculptingProjectPage beeProject = new SculptingProjectPage();

class bee extends StatefulWidget {
  @override
  _beeState createState() => _beeState();
}

class _beeState extends State<bee> {
  final tutorialtabs = [
    beeProjectI(),
    beeProjectM(),
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

class beeProjectI extends StatefulWidget {
  @override
  _beeProjectIState createState() => _beeProjectIState();
}

class _beeProjectIState extends State<beeProjectI> {
  @override
   BuildContext context;
  final List<String> beeProjectMaterials = [
    'yellow clay',
    'black clay',
    'light blue clay',
    'white clay',
    'toothpick',
  ];
  Widget build(context) {
    beeProject.setContext(context);
    beeProject.buildMaterialSearch(beeProjectMaterials);
    return beeProject.buildMaterials(
        'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/SculptingClayMiniFigures%2FThumbnails%2Fbee.jpeg?alt=media&token=e3fc4fcd-bc1a-4184-bdb3-1f444462e343',
        'Bee'
    );
  }
}

class beeProjectM extends StatefulWidget {
  @override
  _beeProjectMState createState() => _beeProjectMState();
}

class _beeProjectMState extends State<beeProjectM> {
   BuildContext context;
  @override
  static Color themeColor = SculptingProjectPage.themeColor;
  final List<String> giphyclips = [
    GifLinks.bee1,
    GifLinks.bee2,
    GifLinks.bee3,
    GifLinks.bee4,
    GifLinks.bee5,
    GifLinks.bee6,
    GifLinks.bee7,
    GifLinks.bee8,
    GifLinks.bee9,
    GifLinks.bee10,


  ];

  Widget build(BuildContext context) {
    beeProject.setContext(context);
    beeProject.TutorialParts(
        10, giphyclips, [5], ['/ball', '/cylinder', '/skinnysnake', '', '/skinnysnake', '','', '', '', '', '', ''],
    );
    return Scaffold(
        appBar: AppBar(
          backgroundColor: themeColor,
          title: const Text(''),
        ),
        body:
          beeProject.VideoCarousel()
    );
  }
}
