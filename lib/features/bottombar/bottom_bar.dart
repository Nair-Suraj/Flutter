import 'package:flutter/material.dart';
import 'package:flutter_app_stack_overflow/features/home_screen/home.dart';
import 'package:flutter_app_stack_overflow/features/library/library.dart';
import 'package:flutter_app_stack_overflow/features/notes_bookmakrs/notes_bookmakrs.dart';
import 'package:flutter_app_stack_overflow/features/search/search.dart';
import 'package:flutter_app_stack_overflow/features/toc/toc.dart';

class BottomBar extends StatefulWidget {
  int moduleIndex = 0;

  bool activeBottomBarIcon;

  BottomBar(this.moduleIndex, [this.activeBottomBarIcon = true]);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  void _navigateBottomBar(int index) {
    setState(() {
      if (this.widget.moduleIndex != index||!this.widget.activeBottomBarIcon) {
        this.widget.moduleIndex = index;
        switch (this.widget.moduleIndex) {
          case 0:
            Navigator.of(context).push(PageRouteBuilder(opaque: false, pageBuilder: (BuildContext context, _, __) => Home()));
            break;
          case 1:
            Navigator.of(context).push(PageRouteBuilder(opaque: false, pageBuilder: (BuildContext context, _, __) => Toc()));

            break;
          case 2:
            Navigator.of(context).push(PageRouteBuilder(opaque: false, pageBuilder: (BuildContext context, _, __) => Search()));

            break;
          case 3:
            Navigator.of(context).push(PageRouteBuilder(opaque: false, pageBuilder: (BuildContext context, _, __) => NotesBookmarks()));

            break;
          case 4:
            Navigator.of(context).push(PageRouteBuilder(opaque: false, pageBuilder: (BuildContext context, _, __) => Library()));

            break;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: this.widget.moduleIndex,
      type: BottomNavigationBarType.shifting,
      backgroundColor: Colors.white,
      items: [
        BottomNavigationBarItem(
          activeIcon: this.widget.activeBottomBarIcon
              ? Padding(
                  padding: const EdgeInsets.only(top: 0.0),
                  child: Icon(
                    Icons.home,
                    color: Colors.orange[200],
                  ),
                )
              : Icon(
                  Icons.home,
                  color: Color(0XFF8E8E8E),
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
          activeIcon: this.widget.activeBottomBarIcon
              ? Icon(
                  Icons.toc,
                  color: Colors.orange[200],
                )
              : Icon(
                  Icons.toc,
                  color: Color(0XFF8E8E8E),
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
          activeIcon: this.widget.activeBottomBarIcon
              ? Icon(
                  Icons.search,
                  color: Colors.orange[200],
                )
              : Icon(Icons.search, color: Color(0XFF8E8E8E)),
          icon: Icon(Icons.search, color: Color(0XFF8E8E8E)),
          title: Text(
            'Search',
            style: TextStyle(color: Colors.black),
          ),
        ),
        BottomNavigationBarItem(
          activeIcon: this.widget.activeBottomBarIcon
              ? Icon(
                  Icons.note_add,
                  color: Colors.orange[200],
                )
              : Icon(Icons.note_add, color: Color(0XFF8E8E8E)),
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
          activeIcon: this.widget.activeBottomBarIcon
              ? Icon(
                  Icons.library_books,
                  color: Colors.orange[200],
                )
              : Icon(Icons.library_books, color: Color(0XFF8E8E8E)),
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
    );
  }
}
