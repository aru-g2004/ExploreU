import 'package:auto_size_text/auto_size_text.dart';
import 'package:eyp_cooking_app/Functions/DesignAndEngineeringProjectPage.dart';
import 'package:eyp_cooking_app/Functions/SculptingProjectPage.dart';
import 'package:eyp_cooking_app/Functions/size_config.dart';
import 'package:eyp_cooking_app/Functions/VideoPlayer.dart';
import 'package:eyp_cooking_app/Functions/GifLinks.dart';
import 'package:eyp_cooking_app/Services/SizeConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

DesignAndEngineeringProjectPage FerrisWheelProject = new DesignAndEngineeringProjectPage();

class FerrisWheel extends StatefulWidget {
  @override
  _FerrisWheelState createState() => _FerrisWheelState();
}

class _FerrisWheelState extends State<FerrisWheel> {
  final tutorialtabs = [
    FerrisWheelProjectI(),
    FerrisWheelProjectM(),
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

class FerrisWheelProjectI extends StatefulWidget {
  @override
  _FerrisWheelProjectIState createState() => _FerrisWheelProjectIState();
}

class _FerrisWheelProjectIState extends State<FerrisWheelProjectI> {
  @override
   BuildContext context;
  static Color themeColor = SculptingProjectPage.themeColor;
  final List<String> FerrisWheelProjectMaterials = [
    'Popsicle/craft sticks',
    'Skewers',
    'Glue gun',
    'Cardboard',
    'Pen or Pencil',
    'Decorative Stickers or tape (optional)',
  ];

  Widget build(context) {
    FerrisWheelProject.setContext(context);
    FerrisWheelProject.buildMaterialSearch(FerrisWheelProjectMaterials);
    return FerrisWheelProject.buildMaterials(
        'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/DesignAndEngineering%2FThumbnails%2FferrisWheel.gif?alt=media&token=669e771f-1f5f-4927-9ffb-7080c581b345',
        'Ferris Wheel');
  }
}
class FerrisWheelProjectM extends StatefulWidget {
  @override
  _FerrisWheelProjectMState createState() => _FerrisWheelProjectMState();
}

class _FerrisWheelProjectMState extends State<FerrisWheelProjectM> {

   BuildContext context;
   static Color themeColor = SculptingProjectPage.themeColor;
  @override
  final List<String> giphyclips = [
    GifLinks.ferrisWheel1,
    GifLinks.ferrisWheel2,
    GifLinks.ferrisWheel3,
    GifLinks.ferrisWheel4,
    GifLinks.ferrisWheel5,
    GifLinks.ferrisWheel6,
    GifLinks.ferrisWheel7,
    GifLinks.ferrisWheel8,
    GifLinks.ferrisWheel9,
    GifLinks.ferrisWheel10,
    GifLinks.ferrisWheel11,
    GifLinks.ferrisWheel12,
    GifLinks.ferrisWheel13,
    GifLinks.ferrisWheel14,
    GifLinks.ferrisWheel15,
    GifLinks.ferrisWheel16,
    GifLinks.ferrisWheel17,
    GifLinks.ferrisWheel18,
    GifLinks.ferrisWheel19,
    GifLinks.ferrisWheel20,
    GifLinks.ferrisWheel21,
  ];

  Widget build(BuildContext context) {
    FerrisWheelProject.setContext(context);
    Container(
        constraints:
        BoxConstraints.expand(height: MediaQuery
            .of(context)
            .size
            .height),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/DesignAndEngineering%2FProjectBackgrounds%2FFerrisWheelBackground.png?alt=media&token=fe53c604-67a9-45e9-9a02-1635b08fd7af'),
            fit: BoxFit.cover,
          ),
        ));
    FerrisWheelProject.TutorialParts(
        21, giphyclips, [5], ['','','','','','','','/gluegun','/gluegun','','','','','','','','','','','','',]);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: themeColor,
          title: const Text(''),
        ),
        body:
        FerrisWheelProject.VideoCarousel()
    );
  }
}
