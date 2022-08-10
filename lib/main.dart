
import 'package:auto_size_text/auto_size_text.dart';
  import 'package:connectivity/connectivity.dart';
  import 'package:eyp_cooking_app/CookingBakingCourse/Recipes/AppleCinnamonOatmeal.dart';
  import 'package:eyp_cooking_app/CookingBakingCourse/Recipes/ChocSauce.dart';
  import 'package:eyp_cooking_app/CookingBakingCourse/Recipes/DarkChocOatmeal.dart';
  import 'package:eyp_cooking_app/CookingBakingCourse/Recipes/MangoCocoOatmeal.dart';
import 'package:eyp_cooking_app/CookingBakingCourse/Skills/CuttingOnion.dart';
  import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
  import 'package:eyp_cooking_app/MainScreens/Loading.dart';
  import 'package:eyp_cooking_app/MainScreens/Home.dart';
  import 'package:eyp_cooking_app/MainScreens/home_page.dart';
  import 'package:eyp_cooking_app/MainScreens/Help.dart';
  // import 'package:eyp_cooking_app/MainScreens/Login.dart';
  import 'package:eyp_cooking_app/CookingBakingCourse/CookingBakingHome.dart';
  import 'CookingBakingCourse/Recipes/BerrySmoothie.dart';
import 'CookingBakingCourse/Recipes/RiceCake.dart';
import 'CookingBakingCourse/Recipes/SweetWrap.dart';
import 'CookingBakingCourse/Skills/StoveSafety.dart';
import 'DesignAndEngineering/Projects/Airplane.dart';
  import 'package:eyp_cooking_app/DesignAndEngineering/Skills/CutPopsicleStick.dart';
  import 'DesignAndEngineering/Projects/BowAndArrowProject.dart';
  import 'DesignAndEngineering/Projects/ShoeboxTheater.dart';
  import 'DesignAndEngineering/Projects/StrawRocket.dart';
  import 'DesignAndEngineering/Skills/GlueGun.dart';
  import 'Functions/PageBuilder.dart';
import 'Functions/PostPictures.dart';
import 'Functions/UploadPage.dart';
import 'SculptingClayMiniFigures/SculptingClayMiniFiguresHome.dart';
  import 'package:eyp_cooking_app/SculptingClayMiniFigures/Projects/BeeProject.dart';
  import 'package:eyp_cooking_app/SculptingClayMiniFigures/Projects/BunnyProject.dart';
  import 'package:eyp_cooking_app/SculptingClayMiniFigures/Projects/BurgerProject.dart';
  import 'package:eyp_cooking_app/SculptingClayMiniFigures/Projects/PandaProject.dart';
  import 'package:eyp_cooking_app/SculptingClayMiniFigures/Projects/PeaPodProject.dart';
  import 'package:eyp_cooking_app/SculptingClayMiniFigures/Projects/PizzaProject.dart';
  import 'package:eyp_cooking_app/SculptingClayMiniFigures/Projects/TurtleProject.dart';
  import 'package:eyp_cooking_app/SculptingClayMiniFigures/Skills/Ball.dart';
  import 'package:eyp_cooking_app/3DModeling/ThreeDModelingHome.dart';
  import 'package:eyp_cooking_app/3DModeling/Skills/ShapeSizing.dart';
  import 'package:eyp_cooking_app/DesignAndEngineering/DesignAndEngineeringHome.dart';
  import 'package:eyp_cooking_app/DesignAndEngineering/Projects/FerrisWheelProject.dart';
  import 'package:eyp_cooking_app/DesignAndEngineering/Projects/BoatProject.dart';
  import 'package:eyp_cooking_app/DesignAndEngineering/Projects/Airplane.dart';
  import 'SculptingClayMiniFigures/Skills/Cylinder.dart';
  import 'SculptingClayMiniFigures/Skills/Kneading.dart';
  import 'SculptingClayMiniFigures/Skills/SkinnySnake.dart';
  import 'SculptingClayMiniFigures/Skills/SnakeShape.dart';
  import 'SculptingClayMiniFigures/Skills/Teardropcone.dart';
  // import 'package:eyp_cooking_app/Services/Connection.dart';
  import 'package:firebase_core/firebase_core.dart';
  import 'package:flutter/material.dart';
  import 'package:eyp_cooking_app/Functions/PageBuilder.dart';
  import 'package:eyp_cooking_app/CookingBakingCourse/CookingBakingHome.dart';
  import 'CookingBakingCourse/Recipes/BananaBread.dart';
  import 'CookingBakingCourse/Recipes/PancakeRecipe.dart';
  import 'MainScreens/Help.dart';
  import 'package:firebase_app_check/firebase_app_check.dart';
  import 'MainScreens/Home.dart';
  import 'MainScreens/Loading.dart';
  import 'Functions/LoggedInWidget.dart';
  import 'SculptingClayMiniFigures/SculptingClayMiniFiguresHome.dart';
  import 'Services/Connection.dart';
import 'Services/SizeConfig.dart';
  // ignore: import_of_legacy_library_into_null_safe
  import 'package:firebase_app_check/firebase_app_check.dart';
    Future<void> main() async {
      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp();
      await FirebaseAppCheck.instance.activate(webRecaptchaSiteKey: 'recaptcha-v3-site-key');
      runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/pageBuilder',
        routes: {
          '/loading': (context) => Loading(),
          '/pageBuilder': (context) => StreamBuilder(
              stream: Connectivity().onConnectivityChanged,
              builder: (BuildContext context,
                  AsyncSnapshot<ConnectivityResult> snapshot) {
                if (snapshot != null &&
                    snapshot.hasData &&
                    snapshot.data != ConnectivityResult.none) {
                  return PageBuilder();
                } else {
                  return NotConnected();
                }
              }),

          '/home': (context) => Home(),

          '/help': (context) => Help(),
          '/cookingbakinghome': (context) => CookingBakingHome(),
'/upload':(context) =>  UploadPage(),
          '/postpics' : (context) => PostPictures(),
          // '/pancakerecipe': (context) => PancakeRecipe(),
          // '/bbRecipe' : (context) => BananaBreadRecipe(),
          // '/acoatmealrecipe': (context) => ACOatmealRecipe(),
          '/sculptingclayminifigures': (context) => SculptingClayMiniFiguresHome(),

          '/designandengineeringhome': (context) => DesignAndEngineeringHome(),
          '/ferriswheel': (context) => FerrisWheel(),
          '/boat': (context) => Boat(),
          '/bowandarrow': (context) => BowAndArrow(),
          '/airplane': (context) => Airplane(),
          '/strawrocket': (context) => StrawRocket(),
           '/theater' : (context) => shoeboxTheater(),

          '/appleCinnamon' : (context) => AppleCinnamonOatmealRecipe(),
          '/bananaBread': (context) => BananaBreadRecipe(),
          '/berrySmoothie' : (context) => BerrySmoothieRecipe(),
          '/chocSauce' : (context) => ChocSauceRecipe(),
          '/darkChoc' : (context) => DarkChocRecipe(),
          '/mangoCocoOatmeal' : (context) => MangoCocoOatmealRecipe(),
          '/pancake' : (context) => PancakeRecipe(),
          '/riceCake' : (context) => RiceCakeRecipe(),
          '/sweetWrap' : (context) => SweetWrapRecipe(),
          '/pancakerecipe': (context) => PancakeRecipe(),
          '/stoveSafety': (context) => StoveSafetySkill(),
          '/cuttingOnions' : (context) => CuttingOnionSkill(),
          '/cutpopsiclestick': (context) => CutPopsicleStick(),
          '/gluegun': (context) => GlueGun(),
          '/bee': (context) => bee(),
          '/bunny': (context) => Bunny(),
          '/burger': (context) => Burger(),
          '/panda': (context) => panda(),
          '/peapod': (context) => peapod(),
          '/pizza': (context) => pizza(),
          '/turtle': (context) => turtle(),
          '/ball': (context) => Ball(),
          '/cylinder': (context) => cylinder(),
          '/kneading': (context) => kneading(),
          '/skinnysnake': (context) => skinnySnake(),
          '/snakeshape': (context) => snakeShape(),
          '/teardropcone': (context) => teardropcone(),
        },
      ));
    }