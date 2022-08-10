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

DesignAndEngineeringProjectPage CutPopsicleStickProject = new DesignAndEngineeringProjectPage();

class CutPopsicleStick extends StatefulWidget {
  @override
  _CutPopsicleStickState createState() => _CutPopsicleStickState();
}

class _CutPopsicleStickState extends State<CutPopsicleStick> {
  final tutorialtabs = [
    CutPopsicleStickProjectI(),
    CutPopsicleStickProjectM(),
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

class CutPopsicleStickProjectI extends StatefulWidget {
  @override
  _CutPopsicleStickProjectIState createState() => _CutPopsicleStickProjectIState();
}

class _CutPopsicleStickProjectIState extends State<CutPopsicleStickProjectI> {
  @override
   BuildContext context;
  final List<String> CutPopsicleStickProjectMaterials = [
    'Popsicle/craft stick',
    'Craft Knife or Scissors',
  ];
  Widget build(context) {
    CutPopsicleStickProject.setContext(context);
    CutPopsicleStickProject.buildMaterialSearch(CutPopsicleStickProjectMaterials);
    return CutPopsicleStickProject.buildMaterials(
        'https://www.wikihow.com/images/thumb/b/b6/Cut-Popsicle-Sticks-Step-12-Version-2.jpg/v4-460px-Cut-Popsicle-Sticks-Step-12-Version-2.jpg.webp',
        'Cutting Popsicle Sticks');
  }
}

class CutPopsicleStickProjectM extends StatefulWidget {
  @override
  _CutPopsicleStickProjectMState createState() => _CutPopsicleStickProjectMState();
}

class _CutPopsicleStickProjectMState extends State<CutPopsicleStickProjectM> {
   BuildContext context;
   static Color themeColor = SculptingProjectPage.themeColor;
  @override
  final List<String> giphyclips = [
    GifLinks.cutPopsicleStick1,
    GifLinks.cutPopsicleStick2,
    GifLinks.cutPopsicleStick3,
    GifLinks.cutPopsicleStick4,



  ];

  Widget build(BuildContext context) {
    CutPopsicleStickProject.setContext(context);
    CutPopsicleStickProject.TutorialParts(
        4, giphyclips, [5], ['','','','',]);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: themeColor,
          title: const Text(''),
        ),
        body:
        CutPopsicleStickProject.VideoCarousel()
    );
  }
}
