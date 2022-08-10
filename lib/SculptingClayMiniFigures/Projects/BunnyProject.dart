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
SculptingProjectPage BunnyProject = new SculptingProjectPage();

class Bunny extends StatefulWidget {
  @override
  _BunnyState createState() => _BunnyState();
}

class _BunnyState extends State<Bunny> {
  final tutorialtabs = [
    BunnyProjectI(),
    BunnyProjectM(),
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

class BunnyProjectI extends StatefulWidget {
  @override
  _BunnyProjectIState createState() => _BunnyProjectIState();
}

class _BunnyProjectIState extends State<BunnyProjectI> {
  @override
   BuildContext context;
  final List<String> BunnyProjectMaterials = [
    'White Clay',
    'Black Clay',
    'Light Pink Clay',
    'Toothpick',
  ];
  Widget build(context) {
    BunnyProject.setContext(context);
    BunnyProject.buildMaterialSearch(BunnyProjectMaterials);
    return BunnyProject.buildMaterials(
        'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/SculptingClayMiniFigures%2FThumbnails%2FBunny.jpeg?alt=media&token=b0abd6f2-6e72-466a-b2b6-0dc02fa3f9cb',
        'Clay Bunny',
    );
  }
}

class BunnyProjectM extends StatefulWidget {
  @override
  _BunnyProjectMState createState() => _BunnyProjectMState();
}

class _BunnyProjectMState extends State<BunnyProjectM> {
   BuildContext context;
   static Color themeColor = SculptingProjectPage.themeColor;
  @override

  final List<String> giphyclips = [
    GifLinks.bunny1,
    GifLinks.bunny2,
    GifLinks.bunny3,
    GifLinks.bunny4,
    GifLinks.bunny5,
    GifLinks.bunny6,
    GifLinks.bunny7,
    GifLinks.bunny8,
    GifLinks.bunny9,
    GifLinks.bunny10,
    GifLinks.bunny11,
    GifLinks.bunny13,
    GifLinks.bunny14,
    GifLinks.bunny15,
    GifLinks.bunny16,
    GifLinks.bunny17,
    GifLinks.bunny18,
    GifLinks.bunny19,


  ];

  Widget build(BuildContext context) {
    BunnyProject.setContext(context);
    BunnyProject.TutorialParts(
        18, giphyclips, [5], ['/ball', '/cylinder', '', '', '', '','','','','/skinnysnake','','','','','','','','','',]
    );

    return Scaffold(
        appBar: AppBar(
          backgroundColor: themeColor,
          title: const Text(''),
        ),
        body:
          BunnyProject.VideoCarousel()
    );
  }
}
