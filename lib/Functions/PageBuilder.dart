import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:connectivity/connectivity.dart';
import 'package:eyp_cooking_app/Functions/google_sign_in.dart.dart';
import 'package:eyp_cooking_app/Services/SizeConfig.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'LoggedInWidget.dart';
import 'SignUpWidget.dart';
import 'google_sign_in.dart.dart';

class PageBuilder extends StatefulWidget {
  @override
  _PageBuilderState createState() => _PageBuilderState();
}

class _PageBuilderState extends State<PageBuilder> {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: ChangeNotifierProvider(
      create: (context) => google_sign_in(),
      child: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          final provider = Provider.of<google_sign_in>(context);
          if (provider.isSigningIn) {
            return buildLoading();
          } else if (snapshot.hasData) {
            return LoggedInWidget();
          } else {
            return SignUpWidget();
          }
        },
      ),
    ),
  );

  Widget buildLoading() => Container(
    color: Colors.blue[100],
    child: Center(child: CircularProgressIndicator()),
  );
}