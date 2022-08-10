import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:eyp_cooking_app/Functions/size_config.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'FirebaseApi.dart';
import 'package:eyp_cooking_app/Functions/ThemeColor.dart';
import 'package:eyp_cooking_app/Functions/size_config.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:eyp_cooking_app/Services/SizeConfig.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:connectivity/connectivity.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'ReviewedFirebaseApi.dart';
import 'google_sign_in.dart.dart';

import 'package:eyp_cooking_app/Functions/FirebaseFile.dart';
class PostPictures extends StatefulWidget {
  @override
  _PostPicturesState createState() => _PostPicturesState();
}

class _PostPicturesState extends State<PostPictures> {

  Future<List<FirebaseFile>> futureFiles;

  get colors => null;

  @override
  void initState() {
    super.initState();
    futureFiles = ReviewedFirebaseApi.listAll('UserUploads/');
  }

  @override
  final user = FirebaseAuth.instance.currentUser;
  Widget build(BuildContext context) =>
      Scaffold(

        body: FutureBuilder<List<FirebaseFile>>(
          future: futureFiles,
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return Center(child: CircularProgressIndicator());
              default:
                if (snapshot.hasError) {
                  return Center(child: Text('Error'));
                } else {
                  final files = snapshot.data;

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildHeader(files.length),
                      const SizedBox(height: 12),
                      Expanded(
                        child: ListView.builder(
                          itemCount: files.length,
                          itemBuilder: (context, index) {
                            final file = files[index];

                            return buildFile(context, file, Colors.blue[200] );
                          },
                        ),
                      ),
                    ],
                  );
                }
            }
          },
        ),
      );

  Widget buildFile(BuildContext context, FirebaseFile file, Color randomColor)
  {

    List<Color> colors = [Colors.blue[200],
      Colors.blue[200],
      Colors.green[200],
      Colors.pink[200],
      Colors.purple[200],];
    List <String> BackgroundPics = [
      'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/Backgrounds%20for%20uploads%2FUpload%20Post%20(10).png?alt=media&token=53a5d070-ed7b-4e42-8419-c32ab3ce40b3',
      'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/Backgrounds%20for%20uploads%2FUpload%20Post%20(11).png?alt=media&token=7bb4374a-e5a5-4f91-bacd-f7c67e31b530',
      'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/Backgrounds%20for%20uploads%2FUpload%20Post%20(12).png?alt=media&token=f74ae437-d1a7-4795-a3a3-d9f9526994d2',
      'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/Backgrounds%20for%20uploads%2FUpload%20Post%20(13).png?alt=media&token=5b6b757b-1c60-48f4-809f-1de8399032ee'
    //   'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/Backgrounds%20for%20uploads%2F1.png?alt=media&token=bc0473b3-d459-4a15-9973-9fe8837e5675',
    //   'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/Backgrounds%20for%20uploads%2F10.png?alt=media&token=233a71c1-ddd5-4010-9368-500c1207bcf0',
    //   'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/Backgrounds%20for%20uploads%2F11.png?alt=media&token=a2170a47-30b6-47d3-8ad6-c7eb6895e588',
    //   'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/Backgrounds%20for%20uploads%2F12.png?alt=media&token=67b7715f-7491-491c-ad52-106dc77d65cb',
    //   'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/Backgrounds%20for%20uploads%2F2.png?alt=media&token=a82b641a-b479-4cd8-a0a6-c15d746fe63e',
    //   'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/Backgrounds%20for%20uploads%2F3.png?alt=media&token=447323ef-8f60-4d89-9ea0-fb75d8bc32b6',
    //   'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/Backgrounds%20for%20uploads%2F4.png?alt=media&token=58dd6c65-1460-48e1-ba59-89de913dc4c1',
    // 'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/Backgrounds%20for%20uploads%2F5.png?alt=media&token=4ead73c6-c9b3-4ef4-a466-5099bd158792',
    //   'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/Backgrounds%20for%20uploads%2F7.png?alt=media&token=50768100-1d26-4b86-a025-caa39e204d76',
    //   'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/Backgrounds%20for%20uploads%2F8.png?alt=media&token=f69ce1c7-03e9-4712-9aec-ada84d3c5b1a',
    //   'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/Backgrounds%20for%20uploads%2F9.png?alt=media&token=37fc41a3-6c17-4460-901c-41797a002941',
    //
    ];

    Random random = new Random();
    int randomNumber = random.nextInt(4); //
    // Here where it says 4, replace it with the amount of strings u have in ur list - 1
    return Container(
      height: SizeConfig.screenHeight * 5 / 10,
      width: SizeConfig.screenWidth * 6.5 / 10,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
    image: DecorationImage(
    image: NetworkImage(BackgroundPics[randomNumber]),
    ),
    ),
    // return Card(
    //     color: colors[randomNumber],
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(30),),
    child: Column(
            children: [
              SizedBox(
                child: Container(
                  height: SizeConfig.screenHeight * .8 / 10,
                  width: SizeConfig.screenWidth * 2 / 10,
                ),
              ),
              Container(
                  height: SizeConfig.screenHeight * 3.5 / 10,
                  width: SizeConfig.screenWidth * 7 / 10,
                      child: FadeInImage.assetNetwork(
                        image: file.url,
                        fit: BoxFit.cover,
                        placeholder: 'images/Spinner.gif',
                      ))]),



        );
  }

  // title: Text(
  //   file.name,
  //   style: TextStyle(
  //     fontWeight: FontWeight.bold,
  //     decoration: TextDecoration.underline,
  //     color: Colors.blue,
  //   ),
  // ),


  Widget buildHeader(int length) =>
      ListTile(
    tileColor: Colors.lightBlueAccent[100],
    title: AutoSizeText('Gallery',
        style: TextStyle(
            color: Colors.black, fontFamily: 'FRED', fontSize: 20)),
    leading: Container(
      height: SizeConfig.safeBlockVertical * 40,
      width: SizeConfig.safeBlockHorizontal * 20,
      child: Scaffold(
  appBar: AppBar(
  backgroundColor:  Colors.lightBlueAccent[100],
  ),
    ),
    // title: Text(
    //   '$length Posts',
    //   style: TextStyle(
    //     fontWeight: FontWeight.bold,
    //     color: Colors.white,
    //   ),
    // ),
    ),
      );
}