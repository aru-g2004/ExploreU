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
SculptingProjectPage turtleProject = new SculptingProjectPage();

class turtle extends StatefulWidget {
  @override
  _turtleState createState() => _turtleState();
}

class _turtleState extends State<turtle> {
  final tutorialtabs = [
    turtleProjectI(),
    turtleProjectM(),
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

class turtleProjectI extends StatefulWidget {
  @override
  _turtleProjectIState createState() => _turtleProjectIState();
}

class _turtleProjectIState extends State<turtleProjectI> {
  @override
   BuildContext context;
  final List<String> turtleProjectMaterials = [
    'Toothpick',
    'Light green clay',
    'Dark green clay',
    'Black clay',
  ];
  Widget build(context) {
    turtleProject.setContext(context);
    turtleProject.buildMaterialSearch(turtleProjectMaterials);
    return turtleProject.buildMaterials(
        'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/SculptingClayMiniFigures%2FThumbnails%2Fturtle.jpeg?alt=media&token=1cbf9ada-e2b9-4e94-af1f-be0138242817',
        'Turtle',
    );
  }
}

class turtleProjectM extends StatefulWidget {
  @override
  _turtleProjectMState createState() => _turtleProjectMState();
}

class _turtleProjectMState extends State<turtleProjectM> {
   BuildContext context;
  @override
  static Color themeColor = SculptingProjectPage.themeColor;
  final List<String> giphyclips = [
    GifLinks.turtle1,
    GifLinks.turtle2,
    GifLinks.turtle3,
    GifLinks.turtle4,
    GifLinks.turtle5,
    GifLinks.turtle6,
    GifLinks.turtle7,
    GifLinks.turtle8,
    GifLinks.turtle9,
    GifLinks.turtle10,
    GifLinks.turtle11,


  ];

  Widget build(BuildContext context) {
    turtleProject.setContext(context);
    turtleProject.TutorialParts(
        11, giphyclips, [5], ['/ball', '/teardropcone', '', '', '', '','', '', '', '', '', '',''],
    );
        return Scaffold(
        appBar: AppBar(
          backgroundColor: themeColor,
          title: const Text(''),
        ),
        body:
          turtleProject.VideoCarousel()
    );
  }
}
