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

DesignAndEngineeringProjectPage shoeboxTheaterProject = new DesignAndEngineeringProjectPage();

class shoeboxTheater extends StatefulWidget {
  @override
  _shoeboxTheaterState createState() => _shoeboxTheaterState();
}

class _shoeboxTheaterState extends State<shoeboxTheater> {
  final tutorialtabs = [
    shoeboxTheaterProjectI(),
    shoeboxTheaterProjectM(),
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

class shoeboxTheaterProjectI extends StatefulWidget {
  @override
  _shoeboxTheaterProjectIState createState() => _shoeboxTheaterProjectIState();
}

class _shoeboxTheaterProjectIState extends State<shoeboxTheaterProjectI> {
  @override
   BuildContext context;
  final List<String> shoeboxTheaterProjectMaterials = [
    'Popsicle/craft sticks',
    'Elmers Glue',
    'Craft Knife or Scissors',
  ];
  Widget build(context) {
    shoeboxTheaterProject.setContext(context);
    shoeboxTheaterProject.buildMaterialSearch(shoeboxTheaterProjectMaterials);
    return shoeboxTheaterProject.buildMaterials(
        'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/DesignAndEngineering%2FThumbnails%2FshoeboxTheater.jpeg?alt=media&token=ec417351-dd10-491a-a60b-08c50d0e947d',
        'ShoeboxTheater');
  }
}

class shoeboxTheaterProjectM extends StatefulWidget {
  @override
  _shoeboxTheaterProjectMState createState() => _shoeboxTheaterProjectMState();
}

class _shoeboxTheaterProjectMState extends State<shoeboxTheaterProjectM> {
   BuildContext context;
   static Color themeColor = SculptingProjectPage.themeColor;
  @override
  final List<String> giphyclips = [
    GifLinks.shoeboxTheater1,
    GifLinks.shoeboxTheater2,
    GifLinks.shoeboxTheater3,
    GifLinks.shoeboxTheater4,
    GifLinks.shoeboxTheater5,
    GifLinks.shoeboxTheater6,
    GifLinks.shoeboxTheater7,
    GifLinks.shoeboxTheater8,
    GifLinks.shoeboxTheater9,
    GifLinks.shoeboxTheater10,
    GifLinks.shoeboxTheater11,
    GifLinks.shoeboxTheater12,


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
                'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/DesignAndEngineering%2FProjectBackgrounds%2FshoeboxTheaterBackground.png?alt=media&token=f651ffa0-ce6d-485f-8e40-635a709ee383'),
            fit: BoxFit.cover,
          ),
        ));
    shoeboxTheaterProject.setContext(context);
    shoeboxTheaterProject.TutorialParts(
        12, giphyclips, [5], ['','','','','','','','','','','','',]);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: themeColor,
          title: const Text(''),
        ),
        body:
        shoeboxTheaterProject.VideoCarousel()
    );
  }
}
