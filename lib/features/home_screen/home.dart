import 'package:flutter/material.dart';
import 'package:flutter_app_stack_overflow/features/library/library.dart';
import 'package:flutter_app_stack_overflow/features/notes_bookmakrs/notes_bookmakrs.dart';
import 'package:flutter_app_stack_overflow/features/search/search.dart';
import 'package:flutter_app_stack_overflow/features/toc/toc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'asso_home_screen.dart';

class Home extends StatefulWidget {
  int moduleIndex;

  Home(this.moduleIndex);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String title = "DGK Guidelines";

  Widget moduleWidget ;

  void _navigateBottomBar(int index) {
    setState(() {
      this.widget.moduleIndex = index;
      switch (this.widget.moduleIndex) {
        case 0:
          moduleWidget = HomeScreen();
          title = "DGK Guidelines";
          break;
        case 1:
          moduleWidget = Toc();
          title = "Table of Content";
          break;
        case 2:
          moduleWidget = Search();
          title = "Search";
          break;
        case 3:
          moduleWidget = NotesBookmarks();
          title = "Notes and Bookmarks";
          break;
        case 4:
          moduleWidget = Library();
          title = "Library";
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _navigateBottomBar(this.widget.moduleIndex);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey[100],
          title: Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                title,
                style: TextStyle(fontSize: 32, color: Colors.black),
              )),
          iconTheme: new IconThemeData(color: Colors.green),
          actions: [
            Builder(
              builder: (context) => IconButton(
                icon: Stack(
                  children: <Widget>[
                    Icon(Icons.menu, color: Color(0XFF8E8E8E)),
                    Positioned(
                      top: 0.0,
                      right: 0.0,
                      left: 22.0,
                      child: Icon(Icons.brightness_1,
                          size: 12.0, color: Colors.redAccent),
                    )
                  ],
                ),
                onPressed: () => Scaffold.of(context).openEndDrawer(),
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              ),
            ),
          ],
        ),
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
          child: moduleWidget,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: this.widget.moduleIndex,
          type: BottomNavigationBarType.shifting,
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              activeIcon: Padding(
                padding: const EdgeInsets.only(top:0.0),
                child: Icon(
                  Icons.home,
                  color: Colors.orange[200],
                ),
              ),
              icon: Icon(
                Icons.home,
                color: Color(0XFF8E8E8E),
              ),
              title: Text('Home',style: TextStyle(color: Colors.black),),
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.toc,
                color: Colors.orange[200],
              ),
              icon: Icon(
                Icons.toc,
                color: Color(0XFF8E8E8E),
              ),
              title: Text('TOC',style: TextStyle(color: Colors.black),),
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.search,
                color: Colors.orange[200],
              ),
              icon: Icon(Icons.search, color: Color(0XFF8E8E8E)),
              title: Text('Search',style: TextStyle(color: Colors.black),),
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.note_add,
                color: Colors.orange[200],
              ),
              icon: SizedBox(
                width: 30,
                child: Icon(Icons.note_add, color: Color(0XFF8E8E8E)),
              ),
              title: Text('Notes',style: TextStyle(color: Colors.black),),
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.library_books,
                color: Colors.orange[200],
              ),
              icon: Icon(Icons.library_books, color: Color(0XFF8E8E8E)),
              title: Text('Library',style: TextStyle(color: Colors.black),),
            ),
          ],
          onTap: (index) {
            _navigateBottomBar(index);
          },
        ),
      ),
    );
  }
}
