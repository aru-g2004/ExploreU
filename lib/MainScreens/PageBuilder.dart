import 'dart:async';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:connectivity/connectivity.dart';
import 'package:eyp_cooking_app/Services/GoogleSignInProvider.dart';
import 'package:eyp_cooking_app/Services/SizeConfig.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'LoggedIn.dart';
import 'SignUp.dart';

class PageBuilder extends StatefulWidget {
  @override
  _PageBuilderState createState() => _PageBuilderState();
}

class _PageBuilderState extends State<PageBuilder> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: ChangeNotifierProvider(
          create: (context) => GoogleSignInProvider(),
          child: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              final provider = Provider.of<GoogleSignInProvider>(context);
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
        child: Center(child: const CircularProgressIndicator()),
      );
}
