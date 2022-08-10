import 'package:eyp_cooking_app/Functions/size_config.dart';
import 'package:eyp_cooking_app/Functions/google_sign_in.dart.dart';
import 'package:eyp_cooking_app/Services/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

import 'GoogleSignupButtonWidget.dart';

class SignUpWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      if (orientation == Orientation.portrait) {
        return Stack(
          alignment: AlignmentDirectional.topCenter,
          children: <Widget>[
            Positioned.fill(child: AnimatedBackground()),
            Image(
              width: SizeConfig.screenWidth * 2 / 5,
              height: SizeConfig.screenHeight * 2 / 5,
              image: AssetImage(
                'images/eyplogo.png',
              ),
            ),
            SizedBox(
              width: SizeConfig.screenWidth,
              height: SizeConfig.screenHeight * 1 / 5,
            ),
            onBottom(AnimatedWave(
              height: 180,
              speed: 1.0,
            )),
            onBottom(AnimatedWave(
              height: 120,
              speed: 0.9,
              offset: pi,
            )),
            onBottom(AnimatedWave(
              height: 220,
              speed: 1.2,
              offset: pi / 2,
            )),
            Center(
              child: SizedBox(
                  height: SizeConfig.screenHeight / 10,
                  width: SizeConfig.screenWidth * 9 / 10,
                  child: GoogleSignupButtonWidget()),
            ),
          ],
        );
      } else {
        return Stack(
          alignment: AlignmentDirectional.topCenter,
          children: <Widget>[
            Positioned.fill(child: AnimatedBackground()),
            Image(
                width: SizeConfig.screenWidth * 2 / 5,
                height: SizeConfig.screenHeight * 2 / 5,
                image: NetworkImage(
                    'https://firebasestorage.googleapis.com/v0/b/exploreyourpassion-77be5.appspot.com/o/Eyp%20logo%2Feyp%20logo%20cropped%20circle.png?alt=media&token=075ef600-9c17-442c-b04d-91c513f6a5b2')),
            SizedBox(
              width: SizeConfig.screenWidth,
              height: SizeConfig.screenHeight / 5,
            ),
            SizedBox(
              width: SizeConfig.screenWidth,
              height: SizeConfig.screenHeight / 5,
            ),
            onBottom(AnimatedWave(
              height: 180,
              speed: 1.0,
            )),
            onBottom(AnimatedWave(
              height: 120,
              speed: 0.9,
              offset: pi,
            )),
            onBottom(AnimatedWave(
              height: 220,
              speed: 1.2,
              offset: pi / 2,
            )),
            Center(
              child: SizedBox(
                  height: SizeConfig.screenHeight / 5,
                  width: SizeConfig.screenWidth * 7 / 10,
                  child: GoogleSignupButtonWidget()),
            ),
          ],
        );
      }
    });
  }
}

Widget onBottom(Widget child) => Positioned.fill(
  child: Align(
    alignment: Alignment.bottomCenter,
    child: child,
  ),
);

class AnimatedWave extends StatelessWidget {
  final double height;
  final double speed;
  final double offset;

  AnimatedWave({ this.height,  this.speed, this.offset = 0.0});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        height: height,
        width: constraints.biggest.width,
        child: LoopAnimation<double>(
            duration: (5000 / speed).round().milliseconds,
            tween: 0.0.tweenTo(2 * pi),
            builder: (context, child, value) {
              return CustomPaint(
                foregroundPainter: CurvePainter(value + offset),
              );
            }),
      );
    });
  }
}

class CurvePainter extends CustomPainter {
  final double value;

  CurvePainter(this.value);

  @override
  void paint(Canvas canvas, Size size) {
    final white = Paint()..color = Colors.white.withAlpha(60);
    final path = Path();

    final y1 = sin(value);
    final y2 = sin(value + pi / 2);
    final y3 = sin(value + pi);

    final startPointY = size.height * (0.5 + 0.4 * y1);
    final controlPointY = size.height * (0.5 + 0.4 * y2);
    final endPointY = size.height * (0.5 + 0.4 * y3);

    path.moveTo(size.width * 0, startPointY);
    path.quadraticBezierTo(
        size.width * 0.5, controlPointY, size.width, endPointY);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawPath(path, white);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

enum _BgProps { color1, color2 }

class AnimatedBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tween = MultiTween<_BgProps>()
      ..add(_BgProps.color1,
          Colors.lightBlue[100].tweenTo(Colors.lightBlue.shade900))
      ..add(_BgProps.color2, Colors.blue[100].tweenTo(Colors.blue.shade900));

    return MirrorAnimation<MultiTweenValues<_BgProps>>(
      tween: tween,
      duration: 3.seconds,
      builder: (context, child, value) {
        return Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    value.get(_BgProps.color1),
                    value.get(_BgProps.color2)
                  ])),
        );
      },
    );
  }
}