import 'package:flutter/material.dart';

class Help extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
body: SafeArea(child: Column(
children: [TextButton.icon(
onPressed: (){
Navigator.pushNamed(context,'/welcome');
},
icon: Icon(Icons.account_circle_rounded),
label: Text('Go back to the Welcome screen'))
],
),

),

);
}
}