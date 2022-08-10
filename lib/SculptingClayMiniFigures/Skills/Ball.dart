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
SculptingProjectPage BallProject = new SculptingProjectPage();

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  final tutorialtabs = [
    BallProjectI(),
    BallProjectM(),
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

class BallProjectI extends StatefulWidget {
  @override
  _BallProjectIState createState() => _BallProjectIState();
}

class _BallProjectIState extends State<BallProjectI> {
  @override
   BuildContext context;
  final List<String> BallProjectMaterials = [
    'clay',
  ];
  Widget build(context) {
    BallProject.setContext(context);
    BallProject.buildMaterialSearch(BallProjectMaterials);
    return BallProject.buildMaterials(
        'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/SculptingClayMiniFigures%2FSkills%2FballThumbnail.PNG?alt=media&token=76e71dfc-80b8-4f99-a048-cb5a85433b48',
        'Clay Ball',
);
  }
}

class BallProjectM extends StatefulWidget {
  @override
  _BallProjectMState createState() => _BallProjectMState();
}

class _BallProjectMState extends State<BallProjectM> {
   BuildContext context;
  @override
  static Color themeColor = SculptingProjectPage.themeColor;
  final List<String> giphyclips = [
    GifLinks.ball


  ];

  Widget build(BuildContext context) {

    BallProject.setContext(context);
    BallProject.TutorialParts(
        1, giphyclips, [5], ['', '', '', '', '', '']);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: themeColor,
          title: const Text(''),
        ),
        body:
          BallProject.VideoCarousel()
    );
  }
}
