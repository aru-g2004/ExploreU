// ignore: file_names
import 'dart:io';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:eyp_cooking_app/Functions/FirebaseApi.dart';
import 'package:eyp_cooking_app/Functions/size_config.dart';
import 'package:eyp_cooking_app/Services/unreviewedStorage.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path_provider/path_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:eyp_cooking_app/Functions/FirebaseFile.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:file_picker/file_picker.dart';
import 'package:flutter/widgets.dart';

import 'package:firebase_app_check/firebase_app_check.dart';

import 'SculptingProjectPage.dart';

class UploadPage extends StatefulWidget {
  // const UploadPage({ Key key}) : super(key: key);

  @override
  _UploadPageState createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  final user = FirebaseAuth.instance.currentUser;
  static Color themeColor = SculptingProjectPage.themeColor;
  @override
  Widget build(BuildContext context) {
    final unreviewedStorage storage = unreviewedStorage();
    storage.getFiles();

    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[100],
        title: const Text(''),
      ),
      body:

      ListView(children: [
        SizedBox(
            height: SizeConfig.screenHeight * 4.5 / 10,
            width: SizeConfig.screenWidth * 5 / 10,
          child: Center(
            child:TextButton(
              onPressed: () async {
                final results = await FilePicker.platform.pickFiles(
                  allowMultiple: false,
                  type: FileType.custom,
                  allowedExtensions: ['png', 'jpg'],

                );
                if (results == null) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("No file selected, Try again! :)")));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(duration: const Duration(seconds: 10), content: Text("Your post will be published in a few "
                          "days after we review it! Meanwhile you can browse our gallery.")));
                }

                final path = results?.files.single.path;
                final fileName = results?.files.single.name;

                storage
                    .uploadFile(path, fileName)
                    .then((value) => print('Done'));
                print(path);
                print(fileName);
                  FirebaseApi.UserPics.add(user.photoURL);
                FirebaseApi.UserPics.add(user.displayName);
              },

              child:
                  Column(
                    children: [

              MaterialButton(
                color: Colors.blue[300],
                textColor: Colors.blue,
                child: Icon(
                  Icons.upload_file,
                  color: Colors.blue[300],
                  size: 250,
                ),
                padding: EdgeInsets.all(24),
                shape: CircleBorder(),
              ),
              Text('Upload Pictures',
                  style: TextStyle(
                      color: Colors.blue[300], fontFamily: 'FRED', fontSize: 20)),
              ]
                  ),
              )
            )
          ),

        //         child: SizedBox(
        //           child: Image(
        //             image: NetworkImage(
        //               'https://globalinsight579281587.files.wordpress.com/2021/11/upload_post__1_-removebg-preview.png',
        //             ),
        //           )),
        //     ),
        //   ),
        // ),
        FutureBuilder(

            future: storage.getFiles(),
            builder:
                (BuildContext context, AsyncSnapshot<List<String>> snapshot) {
              if (snapshot.connectionState == ConnectionState.done &&
                  snapshot.hasData) {
                return
SizedBox(

                  child:
                      Column(
                        children: [
                        MaterialButton(

                    textColor: Colors.green[300],
                    child: Icon(
                      Icons.photo_library,
                      size: 250,
                    ),
                    padding: EdgeInsets.all(24),
                    onPressed: () {
                      Navigator.pushNamed(context, '/postpics');
                    },
                  ),
  Text('Go to Gallery',
      style: TextStyle(
          color: Colors.green[300], fontFamily: 'FRED', fontSize: 20)),
                  ]),
);
              }

              if (snapshot.connectionState == ConnectionState.waiting ||
                  !snapshot.hasData) {
                return const CircularProgressIndicator();
              }
              return Container();
            })
      ]),
    );
  }
}