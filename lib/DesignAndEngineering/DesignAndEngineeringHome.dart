
import 'package:eyp_cooking_app/Functions/HomeFunction.dart';
import 'package:eyp_cooking_app/Functions/ThemeColor.dart';
import 'package:flutter/material.dart';



class DesignAndEngineeringHome extends StatelessWidget {

  Widget build(BuildContext context) {
    final HomeFunction DesignHome = new HomeFunction();

    final List<String> DesignPV = [
      'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/DesignAndEngineering%2FThumbnails%2FBoat.jpeg?alt=media&token=948e64c4-11cd-423c-bd7f-d39ba4b355fc',
      'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/DesignAndEngineering%2FThumbnails%2FBow%26Arrow.jpeg?alt=media&token=873339df-a421-4412-b787-b06bbf01ba2e',
      'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/DesignAndEngineering%2FThumbnails%2FAirplane.jpeg?alt=media&token=dfc80005-8d67-45b1-8e33-57e341401db5',
      'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/DesignAndEngineering%2FThumbnails%2FferrisWheel.gif?alt=media&token=669e771f-1f5f-4927-9ffb-7080c581b345',
      'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/DesignAndEngineering%2FThumbnails%2Fstrawrocket.jpeg?alt=media&token=175c87e8-d983-42f5-a7c0-52581366d6d8',
     'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/DesignAndEngineering%2FThumbnails%2FshoeboxTheater.jpeg?alt=media&token=ec417351-dd10-491a-a60b-08c50d0e947d',
    ];
    final List<String> DesignPNames = [
      'Boat',
      'Bow & Arrow',
      'Airplane',
      'Ferris Wheel',
      'Straw Rocket',
      'Shoebox Theater',];

    final List<String> DesignPNav = ['/boat', '/bowandarrow',  '/airplane', '/ferriswheel', '/strawrocket','/theater'];

    final List<String> DesignSL = [
      'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/DesignAndEngineering%2FSkill%3A%20Using%20a%20glue%20gun%2Fgluegun.PNG?alt=media&token=8a75bc57-fbcc-4ebb-8e10-5de8b498de94',
      'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/DesignAndEngineering%2FSkill%3A%20Cutting%20Popsicle%20Sticks%2FcutpopsicleStickThumbnail.PNG?alt=media&token=42f4823c-d572-4557-be3f-e73c64b35f01',
    ];
    final List<String> DesignSNames = [
      'Using a Glue Gun',
      'Cutting Popsicle Sticks',
    ];
    final List<String> DesignSNav = [
      '/gluegun', '/cutpopsiclestick'
    ];

    DesignHome.Projects(DesignPV, DesignPNames, DesignPNav);
    DesignHome.Skills(DesignSL, DesignSNames, DesignSNav);
    DesignHome.SkillButtons(context);
    DesignHome.ProjectButtons(context);



    return DesignHome.Structure('Projects', 'Skills' , Icons.build);
  }
}