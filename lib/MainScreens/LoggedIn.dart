import 'package:eyp_cooking_app/Functions/ThemeColor.dart';
import 'package:eyp_cooking_app/Functions/google_sign_in.dart.dart';
import 'package:eyp_cooking_app/Functions/size_config.dart';
import 'package:eyp_cooking_app/Services/SizeConfig.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:connectivity/connectivity.dart';

class LoggedInWidget extends StatefulWidget {
  @override
  _LoggedInWidgetState createState() => _LoggedInWidgetState();
}

class _LoggedInWidgetState extends State<LoggedInWidget> {
  Color tempColor = Colors.blue[200];
  Color blueButton = Colors.blue[200];
  Color greenButton = Colors.green[200];
  Color pinkButton = Colors.pink[200];
  Color purpleButton = Colors.purple[200];

  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final user = FirebaseAuth.instance.currentUser;

    return Container(
        alignment: Alignment.center,
        color: tempColor,
        child: OrientationBuilder(builder: (context, orientation) {
          return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: orientation == Orientation.portrait
                  ? [
                      CircleAvatar(
                        maxRadius: 25,
                        backgroundImage: NetworkImage(user.photoURL),
                      ),
                      Center(
                        child: BorderedText(
                            strokeWidth: 2.0,
                            strokeColor: Colors.grey,
                            child: Text(
                              'Welcome ' + user.displayName + '!',
                              style: const TextStyle(
                                  color: Colors.white, fontFamily: 'FRED'),
                            )),
                      ),
                      Card(
                        color: Colors.lime[100],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextButton.icon(
                          label: BorderedText(
                            strokeWidth: 2.0,
                            strokeColor: Colors.grey,
                            child: Text('Home',
                                style: TextStyle(
                                    color: Colors.white, fontFamily: 'FRED')),
                          ),
                          icon: Icon(
                            Icons.home_outlined,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/home');
                          },
                        ),
                      ),
                      Card(
                        color: Colors.red[100],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextButton.icon(
                          icon: const Icon(
                            Icons.help_center_outlined,
                            color: Colors.white,
                          ),
                          label: BorderedText(
                              strokeWidth: 2.0,
                              strokeColor: Colors.grey,
                              child: const Text('Post Pictures',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'FRED'))),
                          onPressed: () {
                            Navigator.pushNamed(context, '/help');
                          },
                        ),
                      ),
                      Card(
                        color: Colors.indigo[100],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextButton.icon(
                          icon: const Icon(
                            Icons.logout,
                            color: Colors.white,
                          ),
                          label: BorderedText(
                              strokeWidth: 2.0,
                              strokeColor: Colors.grey,
                              child: const Text('Logout',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'FRED'))),
                          onPressed: () {
                            final provider = Provider.of<google_sign_in>(
                                context,
                                listen: false);
                            provider.logout();
                          },
                        ),
                      ),
                      ButtonBar(
                        mainAxisSize: MainAxisSize.max,
                        alignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MaterialButton(
                            color: blueButton,
                            textColor: Colors.white,
                            child: const Icon(
                              Icons.format_color_fill,
                              size: 24,
                            ),
                            shape: CircleBorder(),
                            onPressed: () {
                              setState(() {
                                tempColor = Colors.blue[200];
                                blueButton = Colors.grey[200];
                                greenButton = Colors.green[200];
                                purpleButton = Colors.purple[200];
                                pinkButton = Colors.pink[200];
                                ThemeColor.setThemeBlue();
                              });
                            },
                          ),
                          MaterialButton(
                            color: greenButton,
                            textColor: Colors.white,
                            child: const Icon(
                              Icons.format_color_fill,
                              size: 24,
                            ),
                            shape: const CircleBorder(),
                            onPressed: () {
                              setState(() {
                                tempColor = Colors.green[200];
                                greenButton = Colors.grey[200];
                                blueButton = Colors.blue[200];
                                purpleButton = Colors.purple[200];
                                pinkButton = Colors.pink[200];
                                ThemeColor.setThemeGreen();
                              });
                            },
                          ),
                          MaterialButton(
                            color: purpleButton,
                            textColor: Colors.white,
                            child: const Icon(
                              Icons.format_color_fill,
                              size: 24,
                            ),
                            shape: CircleBorder(),
                            onPressed: () {
                              setState(() {
                                tempColor = Colors.purple[200];
                                purpleButton = Colors.grey[200];
                                blueButton = Colors.blue[200];
                                greenButton = Colors.green[200];
                                pinkButton = Colors.pink[200];
                                ThemeColor.setThemePurple();
                              });
                            },
                          ),
                          MaterialButton(
                            color: pinkButton,
                            textColor: Colors.white,
                            child: const Icon(
                              Icons.format_color_fill,
                              size: 24,
                            ),
                            shape: CircleBorder(),
                            onPressed: () {
                              setState(() {
                                tempColor = Colors.pink[200];
                                pinkButton = Colors.grey[200];
                                blueButton = Colors.blue[200];
                                greenButton = Colors.green[200];
                                purpleButton = Colors.purple[200];

                                ThemeColor.setThemePink();
                              });
                            },
                          ),
                        ],
                      )
                    ]
                  : [
                      CircleAvatar(
                        maxRadius: 25,
                        backgroundImage: NetworkImage(user.photoURL),
                      ),
                      Center(
                        child: BorderedText(
                            strokeWidth: 2.0,
                            strokeColor: Colors.grey,
                            child: Text(
                              'Welcome ' + user.displayName + '!',
                              style: const TextStyle(
                                  color: Colors.white, fontFamily: 'FRED'),
                            )),
                      ),
                      ButtonBar(
                          mainAxisSize: MainAxisSize.max,
                          alignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Card(
                              color: Colors.lime[100],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: TextButton.icon(
                                label: BorderedText(
                                  strokeWidth: 2.0,
                                  strokeColor: Colors.grey,
                                  child: const Text('Home',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'FRED')),
                                ),
                                icon: const Icon(
                                  Icons.home_outlined,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/home');
                                },
                              ),
                            ),
                            Card(
                              color: Colors.red[100],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: TextButton.icon(
                                icon: const Icon(
                                  Icons.help_center_outlined,
                                  color: Colors.white,
                                ),
                                label: BorderedText(
                                    strokeWidth: 2.0,
                                    strokeColor: Colors.grey,
                                    child: const Text('Help',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'FRED'))),
                                onPressed: () {
                                  Navigator.pushNamed(context, '/help');
                                },
                              ),
                            ),
                            Card(
                              color: Colors.indigo[100],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: TextButton.icon(
                                icon: const Icon(
                                  Icons.logout,
                                  color: Colors.white,
                                ),
                                label: BorderedText(
                                    strokeWidth: 2.0,
                                    strokeColor: Colors.grey,
                                    child: const Text('Logout',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'FRED'))),
                                onPressed: () {
                                  final provider =
                                      Provider.of<google_sign_in>(context,
                                          listen: false);
                                  provider.logout();
                                },
                              ),
                            ),
                          ]),
                      ButtonBar(
                        mainAxisSize: MainAxisSize.max,
                        alignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          MaterialButton(
                            color: blueButton,
                            textColor: Colors.white,
                            child: const Icon(
                              Icons.format_color_fill,
                              size: 24,
                            ),
                            shape: const CircleBorder(),
                            onPressed: () {
                              setState(() {
                                tempColor = Colors.blue[100];
                                blueButton = Colors.grey[100];
                                greenButton = Colors.green[100];
                                purpleButton = Colors.purple[100];
                                pinkButton = Colors.pink[100];
                                ThemeColor.setThemeBlue();
                              });
                            },
                          ),
                          MaterialButton(
                            color: greenButton,
                            textColor: Colors.white,
                            child: const Icon(
                              Icons.format_color_fill,
                              size: 24,
                            ),
                            shape: const CircleBorder(),
                            onPressed: () {
                              setState(() {
                                tempColor = Colors.green[100];
                                greenButton = Colors.grey[100];
                                blueButton = Colors.blue[100];
                                purpleButton = Colors.purple[100];
                                pinkButton = Colors.pink[100];
                                ThemeColor.setThemeGreen();
                              });
                            },
                          ),
                          MaterialButton(
                            color: purpleButton,
                            textColor: Colors.white,
                            child: const Icon(
                              Icons.format_color_fill,
                              size: 24,
                            ),
                            shape: const CircleBorder(),
                            onPressed: () {
                              setState(() {
                                tempColor = Colors.purple[100];
                                purpleButton = Colors.grey[100];
                                blueButton = Colors.blue[100];
                                greenButton = Colors.green[100];
                                pinkButton = Colors.pink[100];
                                ThemeColor.setThemePurple();
                              });
                            },
                          ),
                          MaterialButton(
                            color: pinkButton,
                            textColor: Colors.white,
                            child: const Icon(
                              Icons.format_color_fill,
                              size: 24,
                            ),
                            shape: const CircleBorder(),
                            onPressed: () {
                              setState(() {
                                tempColor = Colors.pink[100];
                                pinkButton = Colors.grey[100];
                                blueButton = Colors.blue[100];
                                greenButton = Colors.green[100];
                                purpleButton = Colors.purple[100];

                                ThemeColor.setThemePink();
                              });
                            },
                          ),
                        ],
                      )
                    ]);
        }));
  }
}
