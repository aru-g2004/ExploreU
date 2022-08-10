import 'package:eyp_cooking_app/Functions/RecipePage.dart';
import 'package:eyp_cooking_app/Functions/SculptingProjectPage.dart';
import 'package:eyp_cooking_app/MainScreens/Home.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:eyp_cooking_app/Functions/size_config.dart';
import 'package:eyp_cooking_app/Services/SizeConfig.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';

import 'package:eyp_cooking_app/Functions/HomeFunction.dart';
class ThemeColor {
  static void setThemePink() {
    RecipePage.themeColor = Colors.pink[200];
    Home.homeTheme = Colors.pink[200];
    HomeFunction.RecipesABColor = Colors.pink[200];
    HomeFunction.SkillsABColor = Colors.pink[200];
    SculptingProjectPage.themeColor = Colors.pink[200];
  }

  static void setThemeBlue() {
    RecipePage.themeColor = Colors.blue[200];
    Home.homeTheme = Colors.blue[200];
    HomeFunction.RecipesABColor = Colors.blue[200];
    HomeFunction.SkillsABColor = Colors.blue[200];
    SculptingProjectPage.themeColor = Colors.blue[200];
  }

  static void setThemeGreen() {
    RecipePage.themeColor = Colors.green[200];
    Home.homeTheme = Colors.green[200];
    HomeFunction.RecipesABColor = Colors.green[200];
    HomeFunction.SkillsABColor = Colors.green[200];
    SculptingProjectPage.themeColor = Colors.green[200];
  }

  static void setThemePurple() {
    RecipePage.themeColor = Colors.purple[200];
    Home.homeTheme = Colors.purple[200];
    HomeFunction.RecipesABColor = Colors.purple[200];
    HomeFunction.SkillsABColor = Colors.purple[200];
    SculptingProjectPage.themeColor = Colors.purple[200];
  }
}

class HomePage {
  List<String> skillpics = [];
  List<String> skillname = [];
  List<String> skillnav = [];
  List<String> projectpics = [];
  List<String> projectname = [];
  List<String> projectnav = [];
  BuildContext context;
  static Color RecipesABColor = Colors.blue[100];
  static Color SkillsABColor = Colors.blue[100];

  void Skills(
      List<String> SkillPics, List<String> SkillName, List<String> SkillNav) {
    skillpics = SkillPics;
    skillname = SkillName;
    skillnav = SkillNav;
  }

  void Projects(List<String> ProjectPics, List<String> ProjectName,
      List<String> ProjectNav) {
    projectpics = ProjectPics;
    projectname = ProjectName;
    projectnav = ProjectNav;
  }

  List<Widget> SkillButtons(BuildContext c) {
    context = c;
    return <Widget>[
      for (int i = 0; i <= skillpics.length - 1; i++)
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, skillnav.elementAt(i));
          },
          child: Container(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                  child: AutoSizeText(skillname.elementAt(i),
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'FRED',
                      ))),
            ),
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.white),
                image: DecorationImage(
                    image: NetworkImage(skillpics.elementAt(i)),
                    fit: BoxFit.cover)),
          ),
        ),
    ];
  }

  List<Widget> ProjectButtons(BuildContext c) {
    context = c;
    return <Widget>[
      for (int counter = 0; counter <= projectpics.length - 1; counter++)
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, projectnav.elementAt(counter));
          },
          child: Container(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                  child: AutoSizeText(projectname.elementAt(counter),
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'FRED',
                      ))),
            ),
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Colors.white),
                image: DecorationImage(
                    image: NetworkImage(projectpics.elementAt(counter)),
                    fit: BoxFit.cover)),
          ),
        ),
    ];
  }

  Widget Structure(String projectTitle, String skillTitle, IconData iconName) {
    SizeConfig().init(context);
    return OrientationBuilder(builder: (context, orientation) {
      if (orientation == Orientation.portrait) {
        return Scaffold(
          extendBody: true,
          extendBodyBehindAppBar: true,
          backgroundColor: RecipesABColor,
          body: ListView(children: [
            SizedBox(
              height: SizeConfig.blockSizeVertical * 50,
              width: SizeConfig.blockSizeHorizontal * 50,
              child: Scaffold(
                appBar: AppBar(
                  centerTitle: true,
                  backgroundColor: RecipesABColor,
                  title: AutoSizeText(projectTitle,
                      style: TextStyle(
                        fontFamily: 'FRED',
                      )),
                ),
                body: Container(
                  decoration:
                  new BoxDecoration(color: Colors.white.withOpacity(0.0)),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: SizeConfig.blockSizeVertical * 1000,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                      scrollDirection: Axis.horizontal,
                    ),
                    items: ProjectButtons(context),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 40,
              width: SizeConfig.blockSizeHorizontal * 40,
              child: Scaffold(
                appBar: AppBar(
                  leading: Icon(iconName),
                  centerTitle: true,
                  backgroundColor: SkillsABColor,
                  title: AutoSizeText(skillTitle,
                      style: TextStyle(
                        fontFamily: 'FRED',
                      )),
                ),
                body: Container(
                  decoration:
                  new BoxDecoration(color: Colors.white.withOpacity(0.0)),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      initialPage: 0,
                      height: SizeConfig.blockSizeVertical * 100,
                      enableInfiniteScroll: true,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      scrollDirection: Axis.vertical,
                    ),
                    items: SkillButtons(context),
                  ),
                ),
              ),
            ),
          ]),
        );
      } else {
        return Container(
          color: RecipesABColor,
          child: GridView.count(
              scrollDirection: Axis.vertical,
              crossAxisCount: 2,
              children: [
                Scaffold(
                  backgroundColor: RecipesABColor,
                  appBar: AppBar(
                    centerTitle: true,
                    backgroundColor: RecipesABColor,
                    title: AutoSizeText(projectTitle,
                        maxFontSize: 15,
                        minFontSize: 5,
                        style: TextStyle(
                          fontFamily: 'FRED',
                        )),
                  ),
                  extendBody: true,
                  body: Container(
                    padding: EdgeInsets.all(10),
                    width: SizeConfig.screenWidth,
                    decoration:
                    new BoxDecoration(color: Colors.white.withOpacity(0.0)),
                    child: CarouselSlider(
                      options: CarouselOptions(
                        height: SizeConfig.screenHeight,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                        scrollDirection: Axis.horizontal,
                      ),
                      items: ProjectButtons(context),
                    ),
                  ),
                ),
                Scaffold(
                  backgroundColor: RecipesABColor,
                  extendBody: true,
                  appBar: AppBar(
                    leading: Icon(iconName),
                    centerTitle: true,
                    backgroundColor: SkillsABColor,
                    title: AutoSizeText(skillTitle,
                        maxFontSize: 15,
                        minFontSize: 5,
                        style: TextStyle(
                          fontFamily: 'FRED',
                        )),
                  ),
                  body: Container(
                    padding: EdgeInsets.all(10),
                    width: SizeConfig.screenWidth,
                    decoration:
                    new BoxDecoration(color: Colors.white.withOpacity(0.0)),
                    child: CarouselSlider(
                      options: CarouselOptions(
                        initialPage: 0,
                        height: SizeConfig.screenHeight,
                        enableInfiniteScroll: true,
                        enlargeCenterPage: true,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        scrollDirection: Axis.horizontal,
                      ),
                      items: SkillButtons(context),
                    ),
                  ),
                ),
              ]),
        );
      }
    });
  }
}