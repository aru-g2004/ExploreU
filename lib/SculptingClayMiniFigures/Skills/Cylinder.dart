import 'package:auto_size_text/auto_size_text.dart';
import 'package:eyp_cooking_app/CookingBakingCourse/AllGifs.dart';
import 'package:eyp_cooking_app/Functions/SculptingProjectPage.dart';
import 'package:eyp_cooking_app/Services/SizeConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:eyp_cooking_app/Functions/VideoPlayer.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

SculptingProjectPage cylinderProject = new SculptingProjectPage();

class cylinder extends StatefulWidget {
  @override
  _cylinderState createState() => _cylinderState();
}

class _cylinderState extends State<cylinder> {
  final tutorialtabs = [
    cylinderProjectI(),
    cylinderProjectM(),
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

class cylinderProjectI extends StatefulWidget {
  @override
  _cylinderProjectIState createState() => _cylinderProjectIState();
}

class _cylinderProjectIState extends State<cylinderProjectI> {
  @override
  BuildContext context;
  final List<String> cylinderProjectMaterials = [
    'clay',
  ];
  Widget build(context) {
    cylinderProject.setContext(context);
    cylinderProject.buildMaterialSearch(cylinderProjectMaterials);
    return cylinderProject.buildMaterials(
        'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/SculptingClayMiniFigures%2FSkills%2FcylinderThumbnail.PNG?alt=media&token=b1e024f0-9884-4eb1-8608-de3c3dda2b89',
        'Clay cylinder');
  }
}

class cylinderProjectM extends StatefulWidget {
  @override
  _cylinderProjectMState createState() => _cylinderProjectMState();
}

class _cylinderProjectMState extends State<cylinderProjectM> {
  BuildContext context;
  @override
  final List<String> giphyclips = [
    cylinder1,
    cylinder2,
    cylinder3,
  ];

  Widget build(BuildContext context) {
    cylinderProject.setContext(context);
    cylinderProject.TutorialParts(3, giphyclips, [
      5
    ], [
      '',
      '',
      '',
    ]);
    return cylinderProject.VideoCarousel();
  }
}
