import 'package:eyp_cooking_app/Functions/BackgroundPainter.dart';
import 'package:eyp_cooking_app/Functions/LoggedInWidget.dart';
import 'package:eyp_cooking_app/Functions/SignUpWidget.dart';
import 'package:eyp_cooking_app/Functions/google_sign_in.dart.dart';
import 'package:eyp_cooking_app/Services/GoogleSignInProvider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class HomePage extends StatelessWidget {
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

  Widget buildLoading() => Stack(
    fit: StackFit.expand,
    children: [
      CustomPaint(painter: BackgroundPainter()),
      Center(child: CircularProgressIndicator()),
    ],
  );
}