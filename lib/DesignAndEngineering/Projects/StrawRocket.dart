import 'package:auto_size_text/auto_size_text.dart';
import 'package:eyp_cooking_app/Functions/DesignAndEngineeringProjectPage.dart';
import 'package:eyp_cooking_app/Functions/SculptingProjectPage.dart';
import 'package:eyp_cooking_app/Functions/size_config.dart';
import 'package:eyp_cooking_app/Services/SizeConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:eyp_cooking_app/Functions/VideoPlayer.dart';
import 'package:flutter/material.dart';
import 'package:eyp_cooking_app/Functions/GifLinks.dart';
import 'package:video_player/video_player.dart';
import 'package:eyp_cooking_app/Functions/VideoControllers.dart';

DesignAndEngineeringProjectPage StrawRocketProject = new DesignAndEngineeringProjectPage();

class StrawRocket extends StatefulWidget {
  @override
  _StrawRocketState createState() => _StrawRocketState();
}

class _StrawRocketState extends State<StrawRocket> {
  final tutorialtabs = [
    StrawRocketProjectI(),
    StrawRocketProjectM(),
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

class StrawRocketProjectI extends StatefulWidget {
  @override
  _StrawRocketProjectIState createState() => _StrawRocketProjectIState();
}

class _StrawRocketProjectIState extends State<StrawRocketProjectI> {
  @override
   BuildContext context;
  final List<String> BoatProjectMaterials = [
    'Colored Contruction Paper',
    'Tape',
    'Jumbo straw',
  ];
  Widget build(context) {
    StrawRocketProject.setContext(context);
    StrawRocketProject.buildMaterialSearch(BoatProjectMaterials);
    return StrawRocketProject.buildMaterials(
        'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/DesignAndEngineering%2FThumbnails%2Fstrawrocket.jpeg?alt=media&token=175c87e8-d983-42f5-a7c0-52581366d6d8',
        'Straw Rocket');
  }
}

class StrawRocketProjectM extends StatefulWidget {
  @override
  _StrawRocketProjectMState createState() => _StrawRocketProjectMState();
}

class _StrawRocketProjectMState extends State<StrawRocketProjectM> {
   BuildContext context;
   static Color themeColor = SculptingProjectPage.themeColor;
  @override
  final List<String> giphyclips = [
    GifLinks.strawRocket0,
    GifLinks.strawRocket1,
    GifLinks.strawRocket2,
    GifLinks.strawRocket3,
    GifLinks.strawRocket4,
    GifLinks.strawRocket5,
    GifLinks.strawRocket6,
    GifLinks.strawRocket7,
    GifLinks.strawRocket8,
    GifLinks.strawRocket9,
    GifLinks.strawRocket10,
    GifLinks.strawRocket11,
    GifLinks.strawRocket13,
    GifLinks.strawRocket14,
    GifLinks.strawRocket15,
    GifLinks.strawRocket16,


  ];

  Widget build(BuildContext context) {
    Container(
        constraints:
        BoxConstraints.expand(height: MediaQuery
            .of(context)
            .size
            .height),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/DesignAndEngineering%2FProjectBackgrounds%2FStrawRocketBackground.gif?alt=media&token=dd97c6fc-a595-4b01-b2c3-5b11e5a968e5'),
            fit: BoxFit.cover,
          ),
        ));
    StrawRocketProject.setContext(context);
    StrawRocketProject.TutorialParts(
        16, giphyclips, [5], ['', '', '', '', '', '']);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: themeColor,
          title: const Text(''),
        ),
        body:
        StrawRocketProject.VideoCarousel()
    );
  }
}
