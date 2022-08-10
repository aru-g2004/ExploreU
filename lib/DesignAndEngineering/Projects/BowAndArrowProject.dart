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

DesignAndEngineeringProjectPage BowAndArrowProject = new DesignAndEngineeringProjectPage();

class BowAndArrow extends StatefulWidget {
  @override
  _BowAndArrowState createState() => _BowAndArrowState();
}

class _BowAndArrowState extends State<BowAndArrow> {
  final tutorialtabs = [
    BowAndArrowProjectI(),
    BowAndArrowProjectM(),
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

class BowAndArrowProjectI extends StatefulWidget {
  @override
  _BowAndArrowProjectIState createState() => _BowAndArrowProjectIState();
}

class _BowAndArrowProjectIState extends State<BowAndArrowProjectI> {
  @override
   BuildContext context;
  static Color themeColor = SculptingProjectPage.themeColor;
  final List<String> BowAndArrowProjectMaterials = [
    'Popsicles Sticks',
    'Hot Glue Gun',
    'Hot Glue Stick',
    'Jumbo Straw',
    'Rubber Band',
    'Decorative Tape',

  ];
  Widget build(context) {
    BowAndArrowProject.setContext(context);
    BowAndArrowProject.buildMaterialSearch(BowAndArrowProjectMaterials);
    return BowAndArrowProject.buildMaterials(
      'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/DesignAndEngineering%2FThumbnails%2FBow%26Arrow.jpeg?alt=media&token=873339df-a421-4412-b787-b06bbf01ba2e',
        'Bow And Arrow');
  }
}

class BowAndArrowProjectM extends StatefulWidget {
  @override
  _BowAndArrowProjectMState createState() => _BowAndArrowProjectMState();
}

class _BowAndArrowProjectMState extends State<BowAndArrowProjectM> {
   BuildContext context;
   static Color themeColor = SculptingProjectPage.themeColor;
  @override
  final List<String> giphyclips = [
    GifLinks.bowarrow1,
    GifLinks.bowarrow2,
    GifLinks.bowarrow3,
    GifLinks.bowarrow4,
    GifLinks.bowarrow5,
    GifLinks.bowarrow6,
    GifLinks.bowarrow7,
    GifLinks.bowarrow8,
    GifLinks.bowarrow9,
    GifLinks.bowarrow10,
    GifLinks.bowarrow11,
    GifLinks.bowarrow13,
    GifLinks.bowarrow14,
    GifLinks.bowarrow15,
    GifLinks.bowarrow16,
    GifLinks.bowarrow17,
    GifLinks.bowarrow18,
    GifLinks.bowarrow19,
    GifLinks.bowarrow20,
    GifLinks.bowarrow21,
    GifLinks.bowarrow22,
    GifLinks.bowarrow23,
    GifLinks.bowarrow24,
    GifLinks.bowarrow25,


  ];

  @override
  Widget build(BuildContext context) {
    Container(
        constraints:
        BoxConstraints.expand(height: MediaQuery
            .of(context)
            .size
            .height),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/DesignAndEngineering%2FProjectBackgrounds%2FBow%26ArrowBackground.png?alt=media&token=f2ee9c25-408e-4766-9fef-f7129ee2763d'),
            fit: BoxFit.cover,
          ),
        ));
    BowAndArrowProject.setContext(context);
    BowAndArrowProject.TutorialParts(
        24, giphyclips, [5], ['/gluegun','','','','','','','','','','','','','/cutpopsiclestick','','','','','','','','','','',]);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: themeColor,
          title: const Text(''),
        ),
        body:
        BowAndArrowProject.VideoCarousel()
    );
  }
}
