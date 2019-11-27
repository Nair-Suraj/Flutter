
import 'package:flutter/material.dart';
import 'package:flutter_app_stack_overflow/features/bottombar/bottom_bar.dart';
import 'package:flutter_app_stack_overflow/features/draggable_notes/draggable_notes.dart';
import 'package:flutter_app_stack_overflow/features/header_list/header_list.dart';
import 'package:flutter_app_stack_overflow/features/history/history.dart';
import 'package:flutter_app_stack_overflow/features/navigationbar/navigation_bar.dart';
import 'package:flutter_app_stack_overflow/features/stacked_list/stacked_list.dart';

class Library extends StatefulWidget {
  @override
  _LibraryState createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: NavigationBar('History')),
//      body: HeaderList(
//          <ListItem>[
//            HeadingItem("Recents"),
//            MessageItem("Guideline Name","Last Visited Chapter 1"),
//            MessageItem("Guideline Name","Last Visited Chapter 2"),
//            MessageItem("Guideline Name","Last Visited Chapter 3"),
//            MessageItem("Guideline Name","Last Visited Tool 1"),
//            MessageItem("Guideline Name","Last Visited Chapter 4"),
//            MessageItem("Guideline Name","Last Visited Chapter 5"),
//            MessageItem("Guideline Name","Last Visited Tool 3"),
//            MessageItem("Guideline Name","Last Visited Chapter 6"),
//            MessageItem("Guideline Name","Last Visited Chapter 7"),
//            MessageItem("Guideline Name","Last Visited Tool 2"),
//            MessageItem("Guideline Name","Last Visited Chapter 8"),
//            MessageItem("Guideline Name","Last Visited Chapter 9"),
//            MessageItem("Guideline Name","Last Visited Chapter 10"),
//            MessageItem("Guideline Name","Last Visited Tool 4"),
//          ]
//      ),

      body: ScreenPreview(),

//    body: CustomScrollView(
////        slivers: sliverList(2,10),
////      )
    );
  }
}
