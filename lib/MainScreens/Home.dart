import 'package:auto_size_text/auto_size_text.dart';
import 'package:eyp_cooking_app/Functions/size_config.dart';
import 'package:eyp_cooking_app/Services/SizeConfig.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final List<String> navHome = [
    '/cookingbakinghome',
    '/designandengineeringhome',
    '/sculptingclayminifigures',
    '/sculptingclayminifigures',
  ];

  final List<String> giphybuttons = [
    // cookingBakingCover
    'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/HomePage%2Fcooking%20baking%20cover.png?alt=media&token=98ee4e56-5721-42be-8699-0199e07d994c',
    // designEngineeringCover
    'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/HomePage%2Fdesign%20engineering%20cover.png?alt=media&token=6072f213-f663-4ccd-856f-cc53d3e76ac2',
//clayModellingCover
    'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/HomePage%2Fclay%20modelling%20cover.png?alt=media&token=369fb787-21d2-460b-beac-346d10ac6227',
//3dModellingCover
    'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/HomePage%2Fcoming%20soon%20green%20theme.png?alt=media&token=50727b51-1590-48ce-907e-aa66b5ca8758',
    // green-yellow theme coming soon
    'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/HomePage%2Fcoming%20soon%20green%20theme.png?alt=media&token=50727b51-1590-48ce-907e-aa66b5ca8758',
    // blue-red theme coming soon
    'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/HomePage%2Fcoming%20soon%20blue-red%20theme.png?alt=media&token=d8d1c6eb-cacb-4deb-9468-f53befb9b8e7',
  ];

  static Color homeTheme = Colors.blue[200];

  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final myHome = <Widget>[
      for (int index = 0; index < 6; index++)
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, navHome.elementAt(index));
            },
            child: Container(
              height: SizeConfig.safeBlockVertical * 70,
              width: SizeConfig.safeBlockHorizontal * 70,
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: NetworkImage(giphybuttons.elementAt(index)),
                      fit: BoxFit.fill)),
            ))
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: homeTheme,
          centerTitle: true,
          title: AutoSizeText('Home',
              maxFontSize: 40,
              minFontSize: 10,
              style: TextStyle(
                fontFamily: 'FRED',
              )),
        ),
        backgroundColor: homeTheme,
        body: Scrollbar(
          showTrackOnHover: true,
          child: OrientationBuilder(
            builder: (context, orientation) {
              if (orientation == Orientation.portrait) {
                return GridView.count(
                  crossAxisCount: 2,
                  scrollDirection: Axis.vertical,
                  children: myHome,
                );
              } else {}

              return GridView.count(
                crossAxisCount: 3,
                scrollDirection: Axis.vertical,
                children: myHome,
              );
            },
          ),
        ));
  }
}
// import 'package:auto_size_text/auto_size_text.dart';
// import 'package:eyp_cooking_app/Functions/size_config.dart';
// import 'package:eyp_cooking_app/Services/SizeConfig.dart';
// import 'package:flutter/material.dart';
//
// class Home extends StatelessWidget {
//   final List<String> navHome = [
//     '/cookingbakinghome',
//     '/designandengineeringhome',
//     '/sculptingclayminifigures',
//     '/threedmodelinghome',
//     '/upload',
//     '',
//   ];
//
//   final List<String> giphybuttons = [
//     // cookingBakingCover
//     'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/HomePage%2Fcooking%20baking%20cover.png?alt=media&token=98ee4e56-5721-42be-8699-0199e07d994c',
//     // designEngineeringCover
//     'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/HomePage%2Fdesign%20engineering%20cover.png?alt=media&token=6072f213-f663-4ccd-856f-cc53d3e76ac2',
// //clayModellingCover
//     'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/HomePage%2Fclay%20modelling%20cover.png?alt=media&token=369fb787-21d2-460b-beac-346d10ac6227',
// //3dModellingCover
//     'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/HomePage%2F3d%20modelling%20cover.png?alt=media&token=e3fc01b8-072d-4bdd-a8ab-a1077b92db45',
//     // green-yellow theme coming soon
//     'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/HomePage%2Fcoming%20soon%20green%20theme.png?alt=media&token=50727b51-1590-48ce-907e-aa66b5ca8758',
//     // blue-red theme coming soon
//     'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/HomePage%2Fcoming%20soon%20blue-red%20theme.png?alt=media&token=d8d1c6eb-cacb-4deb-9468-f53befb9b8e7',
//   ];
//
//   static Color homeTheme = Colors.lightBlueAccent[100]!;
//
//   Widget build(BuildContext context) {
//     SizeConfig().init(context);
//     final myHome = <Widget>[
//       for (int index = 0; index < 6; index++)
//         TextButton(onPressed: () {
//           Navigator.pushNamed(context, navHome.elementAt(index));
//         }, child: OrientationBuilder(
//           builder: (context, orientation) {
//             return Container(
//               height: SizeConfig.screenHeight / 2,
//               margin: EdgeInsets.all(10.0),
//               padding: EdgeInsets.all(10.0),
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(50),
//                   border: Border.all(color: Colors.white),
//                   image: DecorationImage(
//                     image: NetworkImage(
//                       giphybuttons.elementAt(index),
//                     ),
//                     fit: BoxFit.fill,
//                   )),
//             );
//           },
//         ))
//     ];
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: homeTheme,
//         centerTitle: true,
//         title: AutoSizeText('Home',
//             style: TextStyle(fontFamily: 'FRED', fontSize: 40)),
//       ),
//       backgroundColor: homeTheme,
//       body: ListWheelScrollView(
//         magnification: 1.5,
//         diameterRatio: 2,
//         itemExtent: SizeConfig.screenWidth,
//         children: myHome,
//       ),
//       // body: Container(
//       //     padding: EdgeInsets.all(SizeConfig.screenWidth / 20),
//       //     child: OrientationBuilder(
//       //       builder: (context, orientation) {
//       //         return GridView.count(
//       //           crossAxisCount: orientation == Orientation.landscape ? 3 : 1,
//       //           children: myHome,
//       //         );
//       //    },
//       // )
//     );
//   }
// }