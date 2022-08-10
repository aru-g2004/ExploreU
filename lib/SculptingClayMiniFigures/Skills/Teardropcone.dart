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
SculptingProjectPage teardropconeProject = new SculptingProjectPage();

class teardropcone extends StatefulWidget {
  @override
  _teardropconeState createState() => _teardropconeState();
}

class _teardropconeState extends State<teardropcone> {
  final tutorialtabs = [
    teardropconeProjectI(),
    teardropconeProjectM(),
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

class teardropconeProjectI extends StatefulWidget {
  @override
  _teardropconeProjectIState createState() => _teardropconeProjectIState();
}

class _teardropconeProjectIState extends State<teardropconeProjectI> {
  @override
   BuildContext context;
  final List<String> teardropconeProjectMaterials = [
    'clay',
  ];
  Widget build(context) {
    teardropconeProject.setContext(context);
    teardropconeProject.buildMaterialSearch(teardropconeProjectMaterials);
    return teardropconeProject.buildMaterials(
        'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/SculptingClayMiniFigures%2FSkills%2FteardropconeThumbnail.PNG?alt=media&token=a221e76e-3057-4760-9b5b-43160854a852',
        'Clay teardropcone',);
  }
}

class teardropconeProjectM extends StatefulWidget {
  @override
  _teardropconeProjectMState createState() => _teardropconeProjectMState();
}

class _teardropconeProjectMState extends State<teardropconeProjectM> {
   BuildContext context;
  @override
  static Color themeColor = SculptingProjectPage.themeColor;
  final List<String> giphyclips = [
    GifLinks.teardropcone1,
    GifLinks.teardropcone2,
    GifLinks.teardropcone3,

  ];

  Widget build(BuildContext context) {

    teardropconeProject.setContext(context);
    teardropconeProject.TutorialParts(
        3, giphyclips, [5], ['', '', '', '', '', '']);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: themeColor,
          title: const Text(''),
        ),
        body:
          teardropconeProject.VideoCarousel()
    );
  }
}
