import 'package:flutter/material.dart';
import 'package:flutter_app_stack_overflow/features/bottombar/bottom_bar.dart';
import 'package:flutter_app_stack_overflow/features/library/library.dart';
import 'package:flutter_app_stack_overflow/features/navigationbar/navigation_bar.dart';
import 'package:flutter_app_stack_overflow/features/notes_bookmakrs/notes_bookmakrs.dart';
import 'package:flutter_app_stack_overflow/features/search/search.dart';
import 'package:flutter_app_stack_overflow/features/toc/toc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'asso_home_screen.dart';

class Home extends StatefulWidget {


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize( preferredSize:Size.fromHeight(kToolbarHeight),child: NavigationBar('DGK Guidelines')),
        endDrawer: Drawer(
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text("News"),
                leading: Stack(
                  children: <Widget>[
                    Icon(FontAwesomeIcons.newspaper, color: Color(0XFF8E8E8E)),
                    Positioned(
                      top: 0.0,
                      right: 0.0,
                      left: 22.0,
                      child: Icon(Icons.brightness_1,
                          size: 12.0, color: Colors.redAccent),
                    )
                  ],
                ),
                trailing: Icon(Icons.arrow_forward),
              ),
              SizedBox(
                height: 30,
              ),
              ListTile(
                title: Text("My Account"),
                leading: Icon(Icons.account_circle),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: Text("Settings"),
                leading: Icon(Icons.settings),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: Text("Support"),
                leading: Icon(Icons.help),
                trailing: Icon(Icons.arrow_forward),
              ),
              SizedBox(
                height: 30,
              ),
              ListTile(
                title: Text("How to use"),
                leading: Icon(FontAwesomeIcons.question),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: Text("Rate the app"),
                leading: Icon(Icons.thumb_up),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: Text("Tell a friend"),
                leading: Icon(Icons.share),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: Text("Legal Information"),
                leading: Icon(Icons.info),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: Text("Sponsors"),
                leading: Icon(Icons.cake),
                trailing: Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ),
        body: Center(
          child: HomeScreen(),
        ),
      ),
    );
  }
}
