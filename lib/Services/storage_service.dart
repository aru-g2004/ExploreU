import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'package:flutter/cupertino.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Storage {
  // CollectionReference pics =
  //     FirebaseFirestore.instance.collection('UserImages');

  final firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;

  List<String> downloads = [];

  firebase_storage.ListResult results;

  Future<void> uploadFile(
    String filePath,
    String fileName,
  ) async {
    File file = File(filePath);

    try {
      await storage.ref('UserUploads/$fileName').putFile(file);
    } on firebase_core.FirebaseException catch (e) {
      print(e);
    }
  }

  Future<List<String>> getFiles() async {
    // FirebaseAppCheck firebaseAppCheck = FirebaseAppCheck.instance;
    //firebaseAppCheck.(SafteyNetAppCheckProviderFactory.getInstance());

    firebase_storage.ListResult results =
        await storage.ref('UserUploads').listAll();

    results.items.forEach((firebase_storage.Reference ref) async {
      String downloadUrl = await ref.getDownloadURL();

      downloads.add(downloadUrl);
      print('Found file: $ref');
    });

    return downloads;
  }
}
