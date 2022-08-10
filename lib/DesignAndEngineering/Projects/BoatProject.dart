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

DesignAndEngineeringProjectPage BoatProject = new DesignAndEngineeringProjectPage();

class Boat extends StatefulWidget {
  @override
  _BoatState createState() => _BoatState();
}

class _BoatState extends State<Boat> {
  final tutorialtabs = [
    BoatProjectI(),
    BoatProjectM(),
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

class BoatProjectI extends StatefulWidget {
  @override
  _BoatProjectIState createState() => _BoatProjectIState();
}

class _BoatProjectIState extends State<BoatProjectI> {
  @override
   BuildContext context;
  final List<String> BoatProjectMaterials = [
    'Popsicle/craft sticks',
    'Elmers Glue',
    'Craft Knife or Scissors',
  ];
  Widget build(context) {
    BoatProject.setContext(context);
    BoatProject.buildMaterialSearch(BoatProjectMaterials);
    return BoatProject.buildMaterials(
        'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/DesignAndEngineering%2FThumbnails%2FBoat.jpeg?alt=media&token=948e64c4-11cd-423c-bd7f-d39ba4b355fc',
        'Rowboat');
  }
}

class BoatProjectM extends StatefulWidget {
  @override
  _BoatProjectMState createState() => _BoatProjectMState();
}

class _BoatProjectMState extends State<BoatProjectM> {
  @override
   BuildContext context;
   static Color themeColor = SculptingProjectPage.themeColor;
  @override
  final List<String> giphyclips = [
GifLinks.boat1,
    GifLinks.boat2,
    GifLinks.boat3,
    GifLinks.boat4,
    GifLinks.boat5,
    GifLinks.boat6,
    GifLinks.boat7,
    GifLinks.boat8,
    GifLinks.boat9,
    GifLinks.boat10,
    GifLinks.boat11,
    GifLinks.boat12,
    GifLinks.boat13,


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
                'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/DesignAndEngineering%2FProjectBackgrounds%2FBoatBackground.png?alt=media&token=f651ffa0-ce6d-485f-8e40-635a709ee383'),
            fit: BoxFit.cover,
          ),
        ));
    BoatProject.setContext(context);
    BoatProject.TutorialParts(
        13, giphyclips, [5], ['','','','','','','','','','','','','',]);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: themeColor,
          title: const Text(''),
        ),
        body:
        BoatProject.VideoCarousel()
    );
  }
}
