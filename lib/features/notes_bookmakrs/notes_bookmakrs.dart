import 'package:flutter/material.dart';
import 'package:flutter_app_stack_overflow/features/bottombar/bottom_bar.dart';
import 'package:flutter_app_stack_overflow/features/navigationbar/navigation_bar.dart';

class NotesBookmarks extends StatefulWidget {
  @override
  _NotesBookmarksState createState() => _NotesBookmarksState();
}

class _NotesBookmarksState extends State<NotesBookmarks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: NavigationBar('Notes&Bookmarks')),
      body: Center(
        child: Text('Notes/Bookmarks List'),
      ),

    );
  }
}
