// import 'package:auto_size_text/auto_size_text.dart';
// import 'package:eyp_cooking_app/Functions/RecipePage.dart';
// import 'package:eyp_cooking_app/Services/SizeConfig.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// RecipePage  = new RecipePage();

// class  extends StatefulWidget {
//   const ({ Key? key }) : super(key: key);

//   @override
//   _State createState() => _State();
// }

// class _State extends State<> {
//   @override

//   final recipetabs = [
//     (),
//     (),
//   ];

//   int currentIndex = 0;

//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: recipetabs[currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: RecipePage.themeColor,
//         currentIndex: currentIndex,
//         iconSize: 35,
//         selectedFontSize: 15,
//         unselectedItemColor: Colors.black,
//         selectedItemColor: Colors.white,
//         items: [
//           BottomNavigationBarItem(
//               icon: Icon(Icons.panorama),
//               label: 'recipe',
//               backgroundColor: Colors.cyan[100]),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.video_collection_rounded),
//             label: 'video',
//             backgroundColor: Colors.red[100],
//           ),
//         ],
//         onTap: (index) {
//           setState(() {
//             currentIndex = index;
//           });
//         },
//       ),
//     );
//   }
// }

// class  extends StatefulWidget {
//   const ({ Key? key }) : super(key: key);

//   @override
//   _State createState() => _State();
// }

// class _State extends State<> {
//   @override
  
//   BuildContext context;
//   final List<String>  = [
//     '2 bananas',
//     '1/3 melted coconut oil',
//     '1/4 agave syrup',
//     '2 eggs',
//     '1/4 cup yogurt',
//     '1 tsp baking soda',
//     '1 tsp vanilla extract',
//     '1 tbsp cinnammon',
//     '1 1/2 cup whole wheat flour',
//     'nuts (optional)',
//     'dark chocolate (optional)',
//   ];

//   final List<String>  = [
//     'bananas',
//     'coconut oil',
//     'agave syrup',
//     'eggs',
//     'yogurt',
//     'baking soda',
//     'vanilla extract',
//     'cinnammon',
//     'whole wheat flour',
//     'nuts',
//     'dark chocolate',
//   ];

//   Widget build(context) {
//     .setContext(context);
//     .buildIngredientSearch(
//         , );
//     return .buildIngredients(
//         'picture',
//         'nameOffood');
//   }
// }

// class  extends StatefulWidget {
//   const ({ Key? key }) : super(key: key);

//   @override
//   _State createState() => _State();
// }

// class _State extends State<> {
//   @override
 
//   VideoPlayerController c1;
//   VideoPlayerController c2;
//   VideoPlayerController c3;
//   VideoPlayerController c4;
//   VideoPlayerController c5;

//   final String part1 = '';
//   final String part2 = '';
//   final String part3 = '';
//   final String part4 = '';
//   final String part5 = '';

//   @override
//   void initState() {
//     super.initState();

//     c1 = VideoPlayerController.network()
//       ..initialize().then((_) {
//         setState(() {});
//       });
//     c2 = VideoPlayerController.network()
//       ..initialize().then((_) {
//         setState(() {});
//       });
//     c3 = VideoPlayerController.network()
//       ..initialize().then((_) {
//         setState(() {});
//       });
//     c4 = VideoPlayerController.network()
//       ..initialize().then((_) {
//         setState(() {});
//       });
//     c5 = VideoPlayerController.network()
//       ..initialize().then((_) {
//         setState(() {});
//       });
//   }

//   void dispose() {
//     c1.dispose();
//     c2.dispose();
//     c3.dispose();
//      c4.dispose();
//       c5.dispose();

//     super.dispose();
//   }

//  Widget videoWidget(
//       VideoPlayerController vpc, int step, bool skill, String nav) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         SizedBox(
//           height: SizeConfig.blockSizeVertical * 10,
//         ),
//         Center(
//           child: AutoSizeText(("Step " + step.toString()),
//               style: TextStyle(
//                 fontFamily: 'FRED',
//               )),
//         ),
//         GestureDetector(
//           child: Center(
//             child: Container(
//               height: SizeConfig.blockSizeVertical * 60,
//               width: SizeConfig.blockSizeHorizontal * 75,
//               child: vpc.value.isInitialized
//                   ? AspectRatio(
//                       aspectRatio: vpc.value.aspectRatio,
//                       child: ClipRRect(
//                           borderRadius: BorderRadius.circular(15),
//                           child: Center(
//                             child: VideoPlayer(vpc),
//                           )),
//                     )
//                   : Container(),
//             ),
//           ),
//           onTap: () {
//             setState(() {
//               vpc.value.isPlaying ? vpc.pause() : vpc.play();
//               vpc.setLooping(true);
//             });
//           },
//         ),
//         skill
//             ? MaterialButton(
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30)),
//                 height: SizeConfig.blockSizeVertical * 5,
//                 color: RecipePage.themeColor,
//                 onPressed: () {
//                   Navigator.pushNamed(context, nav);
//                 },
//                 child: AutoSizeText(
//                   'Watch Skill',
//                   style: TextStyle(
//                     fontFamily: 'FRED',
//                   ),
//                 ))
//             : Spacer()
//       ],
//     );
//   }

//   Widget build(BuildContext context) {
//     return Container(
//         constraints:
//             BoxConstraints.expand(height: MediaQuery.of(context).size.height),
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: NetworkImage(
//                 'https://exploreyourpassion708434211.files.wordpress.com/2021/06/image-e1628720161460.png'),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: ListView(scrollDirection: Axis.horizontal, children: [
//           SizedBox(
//             width: SizeConfig.blockSizeVertical * 5,
//           ),
//           videoWidget(c1, 1, false, ''),
//           SizedBox(
//             width: SizeConfig.blockSizeVertical * 5,
//           ),
//           videoWidget(c2, 2, false, ''),
//           SizedBox(
//             width: SizeConfig.blockSizeVertical * 5,
//           ),
//           videoWidget(c3, 3, false, ''),
//           SizedBox(
//             width: SizeConfig.blockSizeVertical * 5,
//           ),
//           videoWidget(c4, 4, false, ''),
//           SizedBox(
//             width: SizeConfig.blockSizeVertical * 5,
//           ),
//           videoWidget(c5, 5, false, ''),
//           SizedBox(
//             width: SizeConfig.blockSizeVertical * 5,
//           ),
//         ]));
//   }
// }
