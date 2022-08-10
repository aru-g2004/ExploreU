import 'package:eyp_cooking_app/Functions/size_config.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';


class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
        height: SizeConfig.blockSizeVertical*10,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://media.giphy.com/media/PKD275LxrWWTAYClBS/giphy.gif'),
              fit: BoxFit.cover,

            )
        ),
        child: Stack(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context,'/home');
                    },
                    child:
                    Text('google', style: TextStyle(
                      fontFamily: 'FRED', fontSize: 100,
                    )),
                  ))]));
              // IconButton(
              //     color: Colors.white,
              //     icon : Image(image: NetworkImage(
              //         'https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-google-icon-logo-png-transparent-svg-vector-bie-supply-14.png'),
              //     ), onPressed: () {  },)]));



  }
}