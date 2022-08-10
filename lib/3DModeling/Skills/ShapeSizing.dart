import 'package:eyp_cooking_app/Functions/size_config.dart';
import 'package:eyp_cooking_app/Services/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ShapeSizing extends StatefulWidget {
  @override
  _ShapeSizingState createState() => _ShapeSizingState();
}

class _ShapeSizingState extends State<ShapeSizing> {
    VideoPlayerController c1; //initializing the controller
    VideoPlayerController c2;
    VideoPlayerController c3;
    VideoPlayerController c4;
  @override
  void initState() {
    super.initState();

    c1 = VideoPlayerController.network(
        'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/CookingAndBaking%2FAppleCinnamonOatmeal.MP4?alt=media&token=d1552220-0a49-41d2-9876-7afd03fa93e1')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
    c2 = VideoPlayerController.network(
        'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/CookingAndBaking%2FBanana%20Bread.mp4?alt=media&token=189d2765-6329-48a6-8686-f70669892c87')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
    c3 = VideoPlayerController.network(
        'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/CookingAndBaking%2FAppleCinnamonOatmeal.MP4?alt=media&token=d1552220-0a49-41d2-9876-7afd03fa93e1')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
    c4 = VideoPlayerController.network(
        'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/CookingAndBaking%2FBanana%20Bread.mp4?alt=media&token=189d2765-6329-48a6-8686-f70669892c87')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange[200],
        title: Text('Banana Bread Recipe',
            style: TextStyle(
              fontFamily: 'FRED',
              fontSize: 30,
            )),
      ),
      backgroundColor: Colors.orange[100],
      body: Center(
        child: GridView.count(
            crossAxisCount: 1,
            scrollDirection: Axis.horizontal,
            children: [
              MaterialButton(
                color: Colors.transparent,
                onPressed: () {
                  setState(() {
                    c1.value.isPlaying ? c1.pause() : c1.play();
                  });
                },
                child: Center(
                  child: Container(
                    height: SizeConfig.blockSizeVertical * 60,
                    child: c1.value.isInitialized
                        ? AspectRatio(
                            aspectRatio: c1.value.aspectRatio,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Center(child: VideoPlayer(c1))),
                          )
                        : Container(),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
