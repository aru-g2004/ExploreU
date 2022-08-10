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
SculptingProjectPage kneadingProject = new SculptingProjectPage();

class kneading extends StatefulWidget {
  @override
  _kneadingState createState() => _kneadingState();
}

class _kneadingState extends State<kneading> {
  final tutorialtabs = [
    kneadingProjectI(),
    kneadingProjectM(),
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

class kneadingProjectI extends StatefulWidget {
  @override
  _kneadingProjectIState createState() => _kneadingProjectIState();
}

class _kneadingProjectIState extends State<kneadingProjectI> {
  @override
   BuildContext context;
  final List<String> kneadingProjectMaterials = [
    'clay',
  ];
  Widget build(context) {
    kneadingProject.setContext(context);
    kneadingProject.buildMaterialSearch(kneadingProjectMaterials);
    return kneadingProject.buildMaterials(
        'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/SculptingClayMiniFigures%2FSkills%2FkneadThumbnail.PNG?alt=media&token=9e58053f-8178-4662-91cd-9ef5059abb84',
        'Clay kneading',
);
  }
}

class kneadingProjectM extends StatefulWidget {
  @override
  _kneadingProjectMState createState() => _kneadingProjectMState();
}

class _kneadingProjectMState extends State<kneadingProjectM> {
   BuildContext context;
  @override
  static Color themeColor = SculptingProjectPage.themeColor;
  final List<String> giphyclips = [
    GifLinks.kneading


  ];

  Widget build(BuildContext context) {
    kneadingProject.setContext(context);
    kneadingProject.TutorialParts(
        1, giphyclips, [5], ['']);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: themeColor,
          title: const Text(''),
        ),
        body:
          kneadingProject.VideoCarousel()
    );
  }
}

