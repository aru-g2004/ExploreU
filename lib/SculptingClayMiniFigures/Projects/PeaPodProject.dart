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
SculptingProjectPage peapodProject = new SculptingProjectPage();

class peapod extends StatefulWidget {
  @override
  _peapodState createState() => _peapodState();
}

class _peapodState extends State<peapod> {
  final tutorialtabs = [
    peapodProjectI(),
    peapodProjectM(),
  ];
  int currentIndex = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      body: tutorialtabs[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: SculptingProjectPage.themeColor,
        currentIndex: currentIndex,
        iconSize: 23,
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

class peapodProjectI extends StatefulWidget {
  @override
  _peapodProjectIState createState() => _peapodProjectIState();
}

class _peapodProjectIState extends State<peapodProjectI> {
  @override
   BuildContext context;
  final List<String> peapodProjectMaterials = [
    'Dark green clay',
    'Light green clay',
    'Black clay',
    'Toothpick',

  ];
  Widget build(context) {
    peapodProject.setContext(context);
    peapodProject.buildMaterialSearch(peapodProjectMaterials);
    return peapodProject.buildMaterials(
        'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/SculptingClayMiniFigures%2FThumbnails%2Fpeapod.jpeg?alt=media&token=53608088-3eb4-46ba-b7ee-20c1535b6089',
        'Clay peapod',
    );
  }
}

class peapodProjectM extends StatefulWidget {
  @override
  _peapodProjectMState createState() => _peapodProjectMState();
}

class _peapodProjectMState extends State<peapodProjectM> {
   BuildContext context;
   static Color themeColor = SculptingProjectPage.themeColor;
  @override
  final List<String> giphyclips = [
    GifLinks.peapod1,
    GifLinks.peapod2,
    GifLinks.peapod3,
    GifLinks.peapod4,
    GifLinks.peapod5,
    GifLinks.peapod6,
    GifLinks.peapod7,
    GifLinks.peapod8,
    GifLinks.peapod9,
    GifLinks.peapod10,
    GifLinks.peapod11,
    GifLinks.peapod12,


  ];

  Widget build(BuildContext context) {
    peapodProject.setContext(context);
    peapodProject.TutorialParts(
        12, giphyclips, [5], ['/ball', '', '', '', '', '','', '', '', '', '', '','',''],
    );
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(30.0), // here the desired height
            child: AppBar(
              backgroundColor: themeColor,
              title: const Text(''),
              // ...
            )
        ),
      body:
      peapodProject.VideoCarousel()
    );
  }
}
