
import 'package:eyp_cooking_app/Functions/HomeFunction.dart';
import 'package:eyp_cooking_app/Functions/ThemeColor.dart';
import 'package:flutter/material.dart';



class SculptingClayMiniFiguresHome extends StatelessWidget {

  Widget build(BuildContext context) {
    final HomeFunction clayHome = new HomeFunction();

    final List<String> clayPP = [
      'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/SculptingClayMiniFigures%2FThumbnails%2Fpeapod.jpeg?alt=media&token=53608088-3eb4-46ba-b7ee-20c1535b6089' ,
      'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/SculptingClayMiniFigures%2FThumbnails%2FBunny.jpeg?alt=media&token=b0abd6f2-6e72-466a-b2b6-0dc02fa3f9cb',
      'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/SculptingClayMiniFigures%2FThumbnails%2Fbee.jpeg?alt=media&token=e3fc4fcd-bc1a-4184-bdb3-1f444462e343',
      'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/SculptingClayMiniFigures%2FThumbnails%2Fburger.jpeg?alt=media&token=4dc973b6-2a67-4ab9-8325-79a92d2bb098',
      'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/SculptingClayMiniFigures%2FThumbnails%2Fturtle.jpeg?alt=media&token=1cbf9ada-e2b9-4e94-af1f-be0138242817',
      'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/SculptingClayMiniFigures%2FThumbnails%2Fpizza.jpeg?alt=media&token=315b1d1a-29c9-44e7-b135-3fce9167728b',
      'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/SculptingClayMiniFigures%2FThumbnails%2FpandaThumbnail.PNG?alt=media&token=f89f8fe0-8ec4-490e-9755-a97860bfe5ab',
    ];
    final List<String> clayPNames = ['Peapod ',
      'Bunny',
      'Bee',
      'Burger',
      'Turtle',
    'Pizza',
    'Panda'];

    final List<String> clayPNav = ['/peapod', '/bunny',  '/bee', '/burger','/turtle','/pizza','/panda' ];

    final List<String> claySP = [
      'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/SculptingClayMiniFigures%2FSkills%2FballThumbnail.PNG?alt=media&token=76e71dfc-80b8-4f99-a048-cb5a85433b48',
      'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/SculptingClayMiniFigures%2Fkneading.PNG?alt=media&token=0d926e9a-9fa2-44e1-95fd-ed875ee8db1e',
      'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/SculptingClayMiniFigures%2FcylinderThumbnail.PNG?alt=media&token=1808b6f7-bab8-49e2-9c83-d743b4d8de18',
      'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/SculptingClayMiniFigures%2FSkills%2FskinnySnakeThumbnail.PNG?alt=media&token=27177fef-2e00-442b-ab15-5aeac03eb48c',
      'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/SculptingClayMiniFigures%2FSkills%2FsnakeThumbnail.PNG?alt=media&token=25172198-393d-4494-bfbd-fe3e8bad9e57',
      'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/SculptingClayMiniFigures%2FSkills%2FteardropconeThumbnail.PNG?alt=media&token=a221e76e-3057-4760-9b5b-43160854a852',

    ];
    final List<String> claySNames = [
      'Ball',
      'Kneading',
      'Cylinder',
      'Skinny Snake',
      'Snake',
      'Teardrop Cone',
    ];
    final List<String> claySNav = [
      '/ball', '/kneading', '/cylinder', '/skinnysnake', '/snakeshape', '/teardropcone'
    ];

    clayHome.Projects(clayPP, clayPNames, clayPNav);
    clayHome.Skills(claySP, claySNames, claySNav);
    clayHome.SkillButtons(context);
    clayHome.ProjectButtons(context);



    return clayHome.Structure('Projects', 'Skills' , Icons.brush_sharp);
  }
}