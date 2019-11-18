import 'package:flutter/material.dart';
import 'package:flutter_app_stack_overflow/features/home_screen/asso_home_screen.dart';
import 'package:flutter_app_stack_overflow/features/home_screen/home.dart';
import 'package:flutter_app_stack_overflow/features/library/library.dart';
import 'package:flutter_app_stack_overflow/features/notes_bookmakrs/notes_bookmakrs.dart';
import 'package:flutter_app_stack_overflow/features/search/search.dart';
import 'package:flutter_app_stack_overflow/features/toc/toc.dart';

class ContentView extends StatefulWidget {
  @override
  _ContentViewState createState() => _ContentViewState();
}

class _ContentViewState extends State<ContentView> {
  @override
  Widget build(BuildContext context) {
    Choice _selectedChoice = choices[0]; // The app's "state".
    int bottomNavigationIndex = 0;
    bool _showNaviAndBottomBar = true;

    void _hideBars(){
      setState(() {
        _showNaviAndBottomBar=false;
        print(_showNaviAndBottomBar);
      });
    }
    void _navigateBottomBar(int index) {
      setState(() {
        bottomNavigationIndex = index;
        switch (bottomNavigationIndex) {
          case 0:
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home(0)));
            break;
          case 1:
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home(1)));

            break;
          case 2:
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home(2)));

            break;
          case 3:
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home(3)));

            break;
          case 4:
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home(4)));

            break;
        }
      });
    }

    void _select(Choice choice) {
      // Causes the app to rebuild with the new _selectedChoice.
      setState(() {
        _selectedChoice = choice;
      });
    }

    return Scaffold(
      appBar: _showNaviAndBottomBar
          ? AppBar(
              title: Text(
                'Guideline Name',
                style: TextStyle(color: Colors.grey[800]),
              ),
              iconTheme: new IconThemeData(color: Colors.black, opacity: 0.5),
              backgroundColor: Colors.grey[100],
              actions: <Widget>[
                // action button
                IconButton(
                  icon: Icon(choices[0].icon),
                  onPressed: () {
                    _select(choices[0]);
                  },
                ),
                // action button
                IconButton(
                  icon: Icon(choices[1].icon),
                  onPressed: () {
                    _select(choices[1]);
                  },
                ),

                PopupMenuButton<Choice>(
                  onSelected: _select,
                  itemBuilder: (BuildContext context) {
                    return choices.skip(2).map((Choice choice) {
                      return PopupMenuItem<Choice>(
                        value: choice,
                        child: ListTile(
                          leading: Icon(choice.icon),
                          title: Text(choice.title),
                        ),
                      );
                    }).toList();
                  },
                ),
              ],
            )
          : PreferredSize(child: Container(), preferredSize: Size(0.0, 0.0)),
      body: InkWell(
        onTap: () {_hideBars();},
        child: Center(
          child: Text('Center Text'),
        ),
      ),
      bottomNavigationBar: _showNaviAndBottomBar
          ? BottomNavigationBar(
              currentIndex: bottomNavigationIndex,
              type: BottomNavigationBarType.shifting,
              backgroundColor: Colors.white,
              items: [
                BottomNavigationBarItem(
                  activeIcon: Padding(
                    padding: const EdgeInsets.only(top: 0.0),
                    child: Icon(
                      Icons.home,
                      color: Colors.orange[200],
                    ),
                  ),
                  icon: Icon(
                    Icons.home,
                    color: Color(0XFF8E8E8E),
                  ),
                  title: Text(
                    'Home',
                    style: TextStyle(color: Colors.black),
                  ),
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
                  title: Text(
                    'TOC',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.search,
                    color: Colors.orange[200],
                  ),
                  icon: Icon(Icons.search, color: Color(0XFF8E8E8E)),
                  title: Text(
                    'Search',
                    style: TextStyle(color: Colors.black),
                  ),
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
                  title: Text(
                    'Notes',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.library_books,
                    color: Colors.orange[200],
                  ),
                  icon: Icon(Icons.library_books, color: Color(0XFF8E8E8E)),
                  title: Text(
                    'Library',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
              onTap: (index) {
                _navigateBottomBar(index);
              },
            )
          : Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
            ),
    );
  }
}

class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Search', icon: Icons.search),
  const Choice(title: 'Font', icon: Icons.font_download),
  const Choice(title: 'Notes', icon: Icons.note_add),
  const Choice(title: 'Bookmark', icon: Icons.bookmark),
  const Choice(title: 'Share', icon: Icons.share),
];
