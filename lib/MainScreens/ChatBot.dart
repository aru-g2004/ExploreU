import 'package:flutter/material.dart';

class ChatBot extends StatefulWidget {
@override
_ChatBotState createState() => _ChatBotState();
}

class _ChatBotState extends State<ChatBot> {
@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Colors.orange,
appBar:
AppBar(

title: Text('ChatBot'),
backgroundColor: Colors.orange,

),

);
}
}