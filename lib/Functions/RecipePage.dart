import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:eyp_cooking_app/Functions/size_config.dart';
import 'package:eyp_cooking_app/Services/SizeConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'SculptingProjectPage.dart';

class RecipePage {
  List<Widget> listofIngredients = [];
   BuildContext context;
  List<Widget> steps = [];
  List<String> videos = [];
  // ignore: non_constant_identifier_names
  String RecipeTabClassName = "";

  static Color themeColor = SculptingProjectPage.themeColor;

  void setContext(BuildContext c) {
    context = c;
  }

  void setThemeColor(Color c) {
    themeColor = c;
  }

  Widget buildIngredients(String foodPic, String foodName) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: SculptingProjectPage.themeColor,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://exploreyourpassion708434211.files.wordpress.com/2021/06/image.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.only(
            left: SizeConfig.blockSizeHorizontal * 20,
            top: SizeConfig.blockSizeVertical * 5,
            right: SizeConfig.blockSizeHorizontal * 20,
          ),
          children: [
            Center(
              child: AutoSizeText(foodName,
                  style: TextStyle(
                    fontFamily: 'FRED',
                  )),
            ),
            Center(
              child: SizedBox(
                  height: SizeConfig.blockSizeVertical * 40,
                  width: SizeConfig.blockSizeVertical * 40,
                  child: Image(
                    image: NetworkImage(
                      foodPic,
                    ),
                  )),
            ),

            MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                color: SculptingProjectPage.themeColor,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                          child: ListView(
                            children: listofIngredients,
                          ));
                    },
                  );
                },
                child: AutoSizeText('Open Ingredients',
                    style: TextStyle(
                      fontFamily: 'FRED',
                    ))),
          ],
        ),
      ),
    );
  }

  void buildIngredientSearch(List<String> ingredients, List<String> amazon) {
    listofIngredients = [];

    listofIngredients.add(SizedBox(height: SizeConfig.screenHeight / 20));
    listofIngredients.add(
      Center(
        child: AutoSizeText('Ingredients',
            style: TextStyle(
              fontFamily: 'FRED',
            )),
      ),
    );
    listofIngredients.add(SizedBox(height: SizeConfig.screenHeight / 20));
    for (int i = 0; i < ingredients.length; i++) {
      listofIngredients.add(ListTile(
        selectedTileColor: SculptingProjectPage.themeColor,
        leading: Icon(Icons.search),
        title: AutoSizeText(ingredients[i],
            maxFontSize: 10,
            minFontSize: 2,
            style: TextStyle(
              fontFamily: 'FRED',
            )),
        onTap: () => launch(
            'https://www.amazon.com/s?k=' + amazon[i] + '&ref=nb_sb_noss'),
      ));
    }
    listofIngredients.add(MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        child: AutoSizeText('Close',
            maxFontSize: 10,
            minFontSize: 2,
            style: TextStyle(
              fontFamily: 'FRED',
            )),
        color: SculptingProjectPage.themeColor,
        textColor: Colors.black,
        onPressed: () {
          Navigator.pop(context);
        }));
  }

  void RecipeParts(int stepsInRecipe, List<String> recipeGifs,
      List<int> skillOnStep, List<String> skillNav) {
    steps = [];
    for (int s = 1; s <= stepsInRecipe; s++) {
      steps.add(ListView(children: [
        SizedBox(
          height: SizeConfig.screenHeight * 0.8 / 10,
          width: SizeConfig.screenWidth * 8.5 / 10,
          child: Center(
            child: AutoSizeText(("Step " + s.toString()),
                style: TextStyle(
                  fontFamily: 'FRED',
                )),
          ),
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 6.5 / 10,
          width: SizeConfig.screenWidth * 8.5 / 10,
          child: FadeInImage.assetNetwork(
            image: recipeGifs.elementAt(s - 1),
            placeholder: 'images/Spinner.gif',
          ),
        ),
        for (int skill in skillOnStep)
          if (s == skill)
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              height: SizeConfig.screenHeight * 5 / 100,
              color: SculptingProjectPage.themeColor,
              onPressed: () {
                Navigator.pushNamed(context, skillNav[skill]);
              },
              child: AutoSizeText(
                'Watch Skill',
                style: TextStyle(
                  fontFamily: 'FRED',
                ),
              ),
            ),
      ]));
    }
  }

  Widget VideoCarousel() {
    return Container(
      constraints:
      BoxConstraints.expand(height: MediaQuery.of(context).size.height),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://exploreyourpassion708434211.files.wordpress.com/2021/06/image.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: CarouselSlider(
        options: CarouselOptions(
          initialPage: 0,
          height: SizeConfig.screenHeight,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: false,
          enlargeCenterPage: true,
          autoPlayCurve: Curves.bounceInOut,
          scrollDirection: Axis.horizontal,
        ),
        items: steps,
      ),
    );
  }
}
// import 'package:auto_size_text/auto_size_text.dart';
// import 'package:carousel_slider/carousel_options.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:eyp_cooking_app/Functions/size_config.dart';
// import 'package:eyp_cooking_app/Services/SizeConfig.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:video_player/video_player.dart';
// import 'package:ndialog/ndialog.dart';
//
// class RecipePage {
//   List<Widget> listofIngredients = [];
//   BuildContext context;
//   List<Widget> steps = [];
//   List<String> videos = [];
//   String RecipeTabClassName = "";
//
//   static Color themeColor = Colors.blue[100];
//
//   void setContext(BuildContext c) {
//     context = c;
//   }
//
//   void setThemeColor(Color c) {
//     themeColor = c;
//   }
//
//   Widget buildIngredients(String foodPic, String foodName) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: themeColor,
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: NetworkImage(
//                 'https://exploreyourpassion708434211.files.wordpress.com/2021/06/image.png'),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: ListView(
//           scrollDirection: Axis.vertical,
//           padding: EdgeInsets.only(
//             left: SizeConfig.blockSizeHorizontal * 20,
//             top: SizeConfig.blockSizeVertical * 5,
//             right: SizeConfig.blockSizeHorizontal * 20,
//           ),
//           children: [
//             Center(
//               child: AutoSizeText(foodName,
//                   style: TextStyle(
//                     fontFamily: 'FRED',
//                   )),
//             ),
//             Center(
//               child: SizedBox(
//                   height: SizeConfig.blockSizeVertical * 40,
//                   width: SizeConfig.blockSizeVertical * 40,
//                   child: Image(
//                     image: NetworkImage(
//                       foodPic,
//                     ),
//                   )),
//             ),
//             MaterialButton(
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(40)),
//                 color: themeColor,
//                 onPressed: () {
//                   showDialog(
//                     context: context,
//                     builder: (context) {
//                       return Dialog(
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(40)),
//                           child: ListView(
//                             children: listofIngredients,
//                           ));
//                     },
//                   );
//                 },
//                 child: AutoSizeText('Open Ingredients',
//                     style: TextStyle(
//                       fontFamily: 'FRED',
//                     ))),
//           ],
//         ),
//       ),
//     );
//   }
//
//   void buildIngredientSearch(List<String> ingredients, List<String> amazon) {
//     listofIngredients = [];
//
//     listofIngredients.add(SizedBox(height: SizeConfig.screenHeight / 20));
//     listofIngredients.add(
//       Center(
//         child: AutoSizeText('Ingredients',
//             style: TextStyle(
//               fontFamily: 'FRED',
//             )),
//       ),
//     );
//     listofIngredients.add(SizedBox(height: SizeConfig.screenHeight / 20));
//     for (int i = 0; i < ingredients.length; i++) {
//       listofIngredients.add(ListTile(
//         selectedTileColor: themeColor,
//         leading: Icon(Icons.search),
//         title: AutoSizeText(ingredients[i],
//             maxFontSize: 10,
//             minFontSize: 2,
//             style: TextStyle(
//               fontFamily: 'FRED',
//             )),
//         onTap: () => launch(
//             'https://www.amazon.com/s?k=' + amazon[i] + '&ref=nb_sb_noss'),
//       ));
//     }
//     listofIngredients.add(MaterialButton(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
//         child: AutoSizeText('Close',
//             maxFontSize: 10,
//             minFontSize: 2,
//             style: TextStyle(
//               fontFamily: 'FRED',
//             )),
//         color: themeColor,
//         textColor: Colors.black,
//         onPressed: () {
//           Navigator.pop(context);
//         }));
//   }
// }