import 'package:auto_size_text/auto_size_text.dart';
import 'package:eyp_cooking_app/Functions/size_config.dart';
import 'package:eyp_cooking_app/Functions/google_sign_in.dart.dart';
import 'package:eyp_cooking_app/Services/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GoogleSignupButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: ListTile(
          selectedTileColor: Colors.blue[100],
          title: const Center(
            child: AutoSizeText(
              'Sign in with Google',
              style: TextStyle(
                fontFamily: 'FRED',
              ),
            ),
          ),
          leading: Image(
              height: SizeConfig.safeBlockVertical * 10,
              width: SizeConfig.safeBlockHorizontal * 10,
              image: const NetworkImage(
                'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/Eyp%20logo%2Fgoogle%20logo.png?alt=media&token=04d11faf-2d5f-45c7-82aa-24e41ccb9dc9',
              )),
          onTap: () {
            final provider =
            Provider.of<google_sign_in>(context, listen: false);
            provider.login();
          }),
    );
  }
}