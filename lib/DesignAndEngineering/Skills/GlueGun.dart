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

DesignAndEngineeringProjectPage GlueGunProject = new DesignAndEngineeringProjectPage();

class GlueGun extends StatefulWidget {
  @override
  _GlueGunState createState() => _GlueGunState();
}

class _GlueGunState extends State<GlueGun> {
  final tutorialtabs = [
    GlueGunProjectI(),
    GlueGunProjectM(),
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

class GlueGunProjectI extends StatefulWidget {
  @override
  _GlueGunProjectIState createState() => _GlueGunProjectIState();
}

class _GlueGunProjectIState extends State<GlueGunProjectI> {
  @override
   BuildContext context;
  final List<String> GlueGunProjectMaterials = [
    'Glue Gun',
    '2 things you can glue together'
  ];
  Widget build(context) {
    GlueGunProject.setContext(context);
    GlueGunProject.buildMaterialSearch(GlueGunProjectMaterials);
    return GlueGunProject.buildMaterials(
        'https://media.istockphoto.com/vectors/glue-gun-hot-pistol-equipment-for-craft-and-art-vector-vector-id1302936627?k=20&m=1302936627&s=612x612&w=0&h=NX5WP35goEc8Ebz59MtD3YjL0NUW0-PAeUzbV3-sPUU=',
        'Using a glue gun');
  }
}

class GlueGunProjectM extends StatefulWidget {
  @override
  _GlueGunProjectMState createState() => _GlueGunProjectMState();
}

class _GlueGunProjectMState extends State<GlueGunProjectM> {
   BuildContext context;
   static Color themeColor = SculptingProjectPage.themeColor;
  @override
  final List<String> giphyclips = [
    GifLinks.usegluegun1,
    GifLinks.usegluegun2,
    GifLinks.usegluegun3,
    GifLinks.usegluegun4,
    GifLinks.usegluegun5,

  ];

  Widget build(BuildContext context) {
    Container(
        constraints:
        BoxConstraints.expand(height: MediaQuery
            .of(context)
            .size
            .height),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/DesignAndEngineering%2FProjectBackgrounds%2FGlueGunBackground.png?alt=media&token=f651ffa0-ce6d-485f-8e40-635a709ee383'),
            fit: BoxFit.cover,
          ),
        ));
    GlueGunProject.setContext(context);
    GlueGunProject.TutorialParts(
        4, giphyclips, [5], ['','','','',]);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: themeColor,
          title: const Text(''),
        ),
        body:
        GlueGunProject.VideoCarousel()
    );
  }
}