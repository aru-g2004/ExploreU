import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:eyp_cooking_app/Functions/HomeFunction.dart';
import 'package:eyp_cooking_app/Functions/ThemeColor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CookingBakingHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // COOKING BAKING SKILL INFO
    final List<String> SkillsPics = [
      'https://exploreyourpassion708434211.files.wordpress.com/2021/06/image-18.png',
      // 'https://exploreyourpassion708434211.files.wordpress.com/2021/06/image-19.png',
      'https://exploreyourpassion708434211.files.wordpress.com/2021/06/image-30.png',
    ];

    final List<String> SkillsNames = [
      'Dicing Onion',
      // 'Chopping Pepper',
      'Stove Safety',
    ];

    List<String> navSkills = [
      '/cuttingOnions',
      // '/',
      '/stoveSafety',
    ];

    final List<String> RecipePics = [
      //pancake
      'https://exploreyourpassion708434211.files.wordpress.com/2021/02/image-23.png',
      //apple cin oatmeal
      'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/CookingAndBaking%2FApple%20cinnamon%20oatmeal.jpg?alt=media&token=fc8cf6ae-4871-46b5-b653-d36516cb6979',
// banana bread
      'https://theboredteenager304521890.files.wordpress.com/2020/08/banana-bread-amazing.jpg?strip=info&w=900',
//choc sauce
      'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/CookingAndBaking%2FChocolate%20sauce.jpg?alt=media&token=594ccaa7-ab57-4c0c-8bac-dff4343d508a',
//dark choc oatmeal
      'https://www.freshnlean.com/wp-content/uploads/2020/05/dark-chocolate-protein-oatmeal.jpg',
//mango coco oatmeal
      'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/CookingAndBaking%2Fmango%20oatmeal.jpg?alt=media&token=5e71b01b-cc6a-4e04-b630-c4526ebb8ee9',
      //Berry smoothie
      'https://cdn.pixabay.com/photo/2015/05/15/19/13/smoothie-769157_960_720.jpg',
      //Rice Cake
      'https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Puffed_Rice_Cakes.jpg/1200px-Puffed_Rice_Cakes.jpg',
      //Sweet Wrap
      'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/CookingAndBaking%2FSweetWrap.PNG?alt=media&token=17bf9dae-babc-4205-953d-bf9cccabbf6b',
    ];
// COOKING BACK RECIPE INFO

    final List<String> RecipeNames = [
      "Pancakes",
      "Apple Cinnamon Oatmeal",
      "Banana Bread",
      "Chocolate Sauce",
      "Dark Choc Oatmeal",
      "Mango Coco Oatmeal",
      "Berry Smoothie",
      "Rice Cake",
      "Sweet Wrap",
    ];

    List<String> navRecipes = [
      '/pancake',
      '/appleCinnamon',
      '/bananaBread',
      '/chocSauce',
      '/darkChoc',
      '/mangoCocoOatmeal',
      '/berrySmoothie',
      '/riceCake',
      '/sweetWrap',
    ];

    final HomeFunction cookingHome = new HomeFunction();

    cookingHome.Projects(RecipePics, RecipeNames, navRecipes);
    cookingHome.Skills(SkillsPics, SkillsNames, navSkills);
    cookingHome.SkillButtons(context);
    cookingHome.ProjectButtons(context);

    return cookingHome.Structure('Recipes', 'Skills', Icons.fastfood);
  }
}