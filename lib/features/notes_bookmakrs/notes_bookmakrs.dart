import 'package:flutter/material.dart';

class NotesBookmarks extends StatefulWidget {
  @override
  _NotesBookmarksState createState() => _NotesBookmarksState();
}

class _NotesBookmarksState extends State<NotesBookmarks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Notes/Bookmarks List'),
      ),
    );
  }
}
