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

DesignAndEngineeringProjectPage AirplaneProject = new DesignAndEngineeringProjectPage();

class Airplane extends StatefulWidget {
  @override
  _AirplaneState createState() => _AirplaneState();
}

class _AirplaneState extends State<Airplane> {
  final tutorialtabs = [
    AirplaneProjectI(),
    AirplaneProjectM(),
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

class AirplaneProjectI extends StatefulWidget {
  @override
  _AirplaneProjectIState createState() => _AirplaneProjectIState();
}

class _AirplaneProjectIState extends State<AirplaneProjectI> {
  @override
   BuildContext context;
  final List<String> AirplaneProjectMaterials = [
    'Craft Knife',
    'Jumbo Popsicle Sticks',
    'Hot Glue gun and hot glue',
    'Paintbrushes',
    'Paint',
  ];
  Widget build(context) {
    AirplaneProject.setContext(context);
    AirplaneProject.buildMaterialSearch(AirplaneProjectMaterials);
    return AirplaneProject.buildMaterials(
        'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/DesignAndEngineering%2FThumbnails%2FAirplane.jpeg?alt=media&token=dfc80005-8d67-45b1-8e33-57e341401db5',
        'Airplane');
  }
}

class AirplaneProjectM extends StatefulWidget {
  @override
  _AirplaneProjectMState createState() => _AirplaneProjectMState();
}

class _AirplaneProjectMState extends State<AirplaneProjectM> {
   BuildContext context;
   static Color themeColor = SculptingProjectPage.themeColor;
  @override
  final List<String> giphyclips = [
    GifLinks.airplane1,
    GifLinks.airplane2,
    GifLinks.airplane3,
    GifLinks.airplane4,
    GifLinks.airplane5,
    GifLinks.airplane6,
    GifLinks.airplane7,
    GifLinks.airplane8,
    GifLinks.airplane9,
    GifLinks.airplane10,
    GifLinks.airplane11,
    GifLinks.airplane13,
    GifLinks.airplane14,
    GifLinks.airplane15,
    GifLinks.airplane16,
    GifLinks.airplane17,
    GifLinks.airplane18,
    GifLinks.airplane19,


  ];

  Widget build(BuildContext context) {
    AirplaneProject.setContext(context);
    AirplaneProject.TutorialParts(
        18, giphyclips, [5], ['/gluegun','','','','','','','','','','','','','','','','','','',]);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: themeColor,
          title: const Text(''),
        ),
        body:
        AirplaneProject.VideoCarousel()
    );
  }
}
