import 'package:auto_size_text/auto_size_text.dart';
import 'package:eyp_cooking_app/CookingBakingCourse/AllGifs.dart';
import 'package:eyp_cooking_app/Functions/SculptingProjectPage.dart';
import 'package:eyp_cooking_app/Services/SizeConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:eyp_cooking_app/Functions/VideoPlayer.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

SculptingProjectPage pandaProject = new SculptingProjectPage();

class panda extends StatefulWidget {
  @override
  _pandaState createState() => _pandaState();
}

class _pandaState extends State<panda> {
  final tutorialtabs = [
    pandaProjectI(),
    pandaProjectM(),
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

class pandaProjectI extends StatefulWidget {
  @override
  _pandaProjectIState createState() => _pandaProjectIState();
}

class _pandaProjectIState extends State<pandaProjectI> {
  @override
  BuildContext context;
  final List<String> pandaProjectMaterials = [
    'Dark grey clay',
    'White clay',
    'Toothpick/any sharp tool',
  ];
  Widget build(context) {
    pandaProject.setContext(context);
    pandaProject.buildMaterialSearch(pandaProjectMaterials);
    return pandaProject.buildMaterials(
        'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/SculptingClayMiniFigures%2FThumbnails%2FpandaThumbnail.PNG?alt=media&token=f89f8fe0-8ec4-490e-9755-a97860bfe5ab',
        'Clay Panda',);
  }
}

class pandaProjectM extends StatefulWidget {
  @override
  _pandaProjectMState createState() => _pandaProjectMState();
}

class _pandaProjectMState extends State<pandaProjectM> {
  BuildContext context;
  @override
  static Color themeColor = SculptingProjectPage.themeColor;
  final List<String> giphyclips = [
    panda0,
    panda1,
    panda2,
    panda3,
    panda4,
    panda5,
    panda6,
    panda7,
    panda8,
    panda9,
    panda10,
  ];

  Widget build(BuildContext context) {

    pandaProject.setContext(context);
    pandaProject.TutorialParts(
        10, giphyclips, [5], ['/ball', '', '', '', '', '', '', '', '', '', '']);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: themeColor,
          title: const Text(''),
        ),
        body:
        pandaProject.VideoCarousel()
    );
  }
}
