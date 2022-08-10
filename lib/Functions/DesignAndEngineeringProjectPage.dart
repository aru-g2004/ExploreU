import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:eyp_cooking_app/Functions/size_config.dart';
import 'package:eyp_cooking_app/Services/SizeConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'SculptingProjectPage.dart';

class DesignAndEngineeringProjectPage {
  List<String> ProjectMaterials = [];
  List<Widget> listofMaterials = [];
  BuildContext context;
  List<Widget> steps = [];
  static Color themeColor = SculptingProjectPage.themeColor;
  void setContext(BuildContext c) {
    context = c;
  }

  void setThemeColor(Color c) {
    themeColor = c;
  }

  Widget buildMaterials(String ProjectPic, String ProjectName) {
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
          AutoSizeText(ProjectName,
              style: GoogleFonts.fredokaOne(),
              ),
          Center(
            child: SizedBox(
                height: SizeConfig.blockSizeVertical * 40,
                width: SizeConfig.blockSizeVertical * 40,
                child: Image(
                  image: NetworkImage(
                    ProjectPic,
                  ),
                )),
          ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://exploreyourpassion708434211.files.wordpress.com/2021/06/image.png'),
              fit: BoxFit.cover,
            ),
          ),
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
                          children: listofMaterials,
                        ));
                  },
                );
              },
              child: AutoSizeText('View Materials',
                  style: TextStyle(
                    fontFamily: 'FRED',
                  ))),
        ],
      ),
      ),
    );
  }

  void buildMaterialSearch(List<String> materials) {
    listofMaterials = [];
    listofMaterials.add(SizedBox(height: SizeConfig.screenHeight / 20));
    listofMaterials.add(
      Center(
        child: AutoSizeText('Materials Needed:',
            style: TextStyle(
              fontFamily: 'FRED',
            )),
      ),
    );
    listofMaterials.add(SizedBox(height: SizeConfig.screenHeight / 20));
    for (int i = 0; i < materials.length - 1; i++) {
      listofMaterials.add(ListTile(
        selectedTileColor: SculptingProjectPage.themeColor,
        leading: Icon(Icons.search),
        title: AutoSizeText(materials[i],
            style: TextStyle(
              fontFamily: 'FRED',
            )),
        onTap: () => launch(
            'https://www.amazon.com/s?k=' + materials[i] + '&ref=nb_sb_noss'),
      ));
    }
    listofMaterials.add(MaterialButton(
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
////////////////////////////////////////////////////////////////////////////////
  ///

  void TutorialParts(int stepsInTutorial, List<String> tutorialGifs,
      List<int> skillOnStep, List<String> skillNav) {
    for (int s = 1; s <= stepsInTutorial; s++) {
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
            image: tutorialGifs.elementAt(s - 1),
            placeholder: 'images/Spinner.gif',
          ),
        ),
        for (int skill in skillOnStep)
          if (s == skill)
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              height: SizeConfig.blockSizeVertical * 5 / 100,
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
