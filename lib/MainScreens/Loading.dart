import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
@override
_LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
@override
Widget build(BuildContext context) {

Future.delayed(Duration(seconds: 3), () {
Navigator.pushNamed(context, '/home');
});

{
return Scaffold(
backgroundColor: Colors.blue[50],
body:
Padding(
padding: EdgeInsets.all(100.0),
child: Column(
children: [
// SizedBox(height: 150,),
// Image(image: AssetImage('assets/images/eyplogo.png',),
// height: 200,
// width: 200,
// ),

SizedBox(height: 100,),

LinearProgressIndicator(
backgroundColor: Colors.lightBlueAccent,
valueColor: AlwaysStoppedAnimation<Color>(Colors.grey),
minHeight: 12,
),

// CircularProgressIndicator(
//   backgroundColor: Colors.lightBlueAccent[50],
//   valueColor: AlwaysStoppedAnimation<Color>(Colors.grey) ,
// ),

],
),

),

);
}
}
}
