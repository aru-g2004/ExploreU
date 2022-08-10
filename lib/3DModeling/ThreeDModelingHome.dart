import 'dart:ui';
// ignore: import_of_legacy_library_into_null_safe
import 'package:carousel_slider/carousel_slider.dart';
import 'package:eyp_cooking_app/Functions/size_config.dart';
// import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:eyp_cooking_app/3DModeling/Skills/ShapeSizing.dart';
class ThreeDModelingHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final List<String> SkillsPics = [
      'https://cuperman007.github.io/codeclub/learn/tinkercad/how-to/images/resize-with-shape-menu.gif',
      'https://cuperman007.github.io/codeclub/learn/tinkercad/how-to/images/resize-with-shape-menu.gif',
      'https://cuperman007.github.io/codeclub/learn/tinkercad/how-to/images/resize-with-shape-menu.gif',
      'https://cuperman007.github.io/codeclub/learn/tinkercad/how-to/images/resize-with-shape-menu.gif',
      'https://cuperman007.github.io/codeclub/learn/tinkercad/how-to/images/resize-with-shape-menu.gif',
      'https://cuperman007.github.io/codeclub/learn/tinkercad/how-to/images/resize-with-shape-menu.gif',
    ];

    final List<String> RecipePics = [
      'https://cuperman007.github.io/codeclub/learn/tinkercad/how-to/images/resize-with-shape-menu.gif',
      'https://cuperman007.github.io/codeclub/learn/tinkercad/how-to/images/resize-with-shape-menu.gif',
      'https://cuperman007.github.io/codeclub/learn/tinkercad/how-to/images/resize-with-shape-menu.gif',
      'https://cuperman007.github.io/codeclub/learn/tinkercad/how-to/images/resize-with-shape-menu.gif',
      'https://cuperman007.github.io/codeclub/learn/tinkercad/how-to/images/resize-with-shape-menu.gif',
      'https://cuperman007.github.io/codeclub/learn/tinkercad/how-to/images/resize-with-shape-menu.gif',
      'https://cuperman007.github.io/codeclub/learn/tinkercad/how-to/images/resize-with-shape-menu.gif',
      'https://cuperman007.github.io/codeclub/learn/tinkercad/how-to/images/resize-with-shape-menu.gif',
    ];
    List <String> navSkills =
    [
      '/shapesizing',
      '/shapesizing',
      '/shapesizing',
      '/shapesizing',
      '/shapesizing',
      '/shapesizing',

    ];
    List <String> navRecipes =
    [
      '/shapesizing',
      '/shapesizing',
      '/shapesizing',
      '/shapesizing',
      '/shapesizing',

    ];
    List <String> skillNames =
    [
      'Resizing Shapes',
      'Resizing Shapes',
      'Resizing Shapes',
      'Resizing Shapes',
      'Resizing Shapes',
      'Resizing Shapes',

    ];
    final List<String> RecipeNames = [
      'Resizing Shapes',
      'Resizing Shapes',
      'Resizing Shapes',
      'Resizing Shapes',
      'Resizing Shapes',
      'Resizing Shapes',
      'Resizing Shapes',
      'Resizing Shapes',
    ];


    final List<Widget> SkillButtons = <Widget>[
      for(int i = 0; i < SkillsPics.length; i++)
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, navSkills.elementAt(i) );
          },
          child:
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
            child: Container(
              child: Center(child: Text(skillNames.elementAt(i),
                  style: TextStyle(
                    color: Colors.black,
                    backgroundColor: Colors.white.withOpacity(.5),
                    fontFamily: 'FRED',
                    fontSize: 32,
                  ))),
              height: SizeConfig.blockSizeVertical * 350,
              width: SizeConfig.blockSizeHorizontal * 450,
              margin:  EdgeInsets.all(10.0),
              padding:  EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                //     color: Colors.white.withOpacity(0.0),
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.white),
                  image: DecorationImage(
                      image: NetworkImage(SkillsPics.elementAt(i) ,  ),
                      fit: BoxFit.cover
                  )
              ),


            ),
          ),
        ),
    ];

    final List<Widget> RecipeButtons = <Widget>[
      for(int counter = 0; counter < RecipePics.length; counter++)
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, navRecipes.elementAt(counter) );
          },
          child:
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
            child: Container(
              child: Center(child: Text(RecipeNames.elementAt(counter),
                  style: TextStyle(
                    color: Colors.black,
                    backgroundColor: Colors.white.withOpacity(.5),
                    fontFamily: 'FRED',
                    fontSize: 32,
                  ))),
              height: SizeConfig.blockSizeVertical * 350,
              width: SizeConfig.blockSizeHorizontal * 450,
              margin:  EdgeInsets.all(10.0),
              padding:  EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                // color: Colors.white.withOpacity(0.0),
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.white),
                  image: DecorationImage(
                      image: NetworkImage(RecipePics.elementAt(counter) ,  ),
                      fit: BoxFit.cover
                  )

              ),
            ),
          ),
        ),
    ];


    return
      Scaffold(
        // appBar: AppBar(
        //   centerTitle: true,
        //   backgroundColor: Colors.purple[100],
        //   title: Text('Cooking & Baking Course', style: TextStyle(
        //     fontFamily: 'FRED',
        //     fontSize:25,)),
        // ),
          backgroundColor: Colors.blue[100],

          body: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
              ),
              children: <Widget>[

                Scaffold(
                  appBar: AppBar(
                    // leading: Icon(Icons.fastfood_outlined),
                    centerTitle: true,
                    backgroundColor: Colors.green[100],
                    title: Text('Tutorials', style: TextStyle(
                      fontFamily: 'FRED',
                      fontSize:35,)),
                  ),
                  body: Container(
                    decoration: new BoxDecoration(color: Colors.white.withOpacity(0.0)),
                    // height: MediaQuery. of(context). size. height / 2,
                    // color: Colors.blue[50],
                    child:
                    CarouselSlider(
                        options: CarouselOptions(
                          height: MediaQuery. of(context). size. height / 2 ,
                          initialPage: 0,
                          enableInfiniteScroll: true,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 3),
                          //autoPlayAnimationDuration: Duration(milliseconds: 800),
                          autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                          // onPageChanged: callbackFunction,
                          scrollDirection: Axis.horizontal,
                        ),
                        items: RecipeButtons


                    ),
                  ),
                )  ,
                Scaffold(
                  appBar: AppBar(
                    leading: Icon(Icons.auto_fix_high),
                    centerTitle: true,
                    backgroundColor: Colors.green[100],
                    title: Text('Basic Skills', style: TextStyle(
                      fontFamily: 'FRED',
                      fontSize:35,)),
                  ),
                  body:
                  Container(
                    decoration: new BoxDecoration(color: Colors.white.withOpacity(0.0)),
                    // height: MediaQuery. of(context). size. height / 2,
                    //color: Colors.blue[50],
                    child:
                    CarouselSlider(
                        options: CarouselOptions(
                          height: MediaQuery. of(context). size. height / 2 - 100,
                          initialPage: 0,
                          enableInfiniteScroll: true,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 3),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          // onPageChanged: callbackFunction,
                          scrollDirection: Axis.vertical,
                        ),
                        items: SkillButtons


                    ),
                  ),


                ),
              ])
      );
  }
}

