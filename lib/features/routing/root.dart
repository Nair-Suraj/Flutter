import 'package:flutter/material.dart';
import 'package:flutter_app_stack_overflow/features/home_screen/home.dart';
import 'package:flutter_app_stack_overflow/features/library/library.dart';
import 'package:flutter_app_stack_overflow/features/notes_bookmakrs/notes_bookmakrs.dart';
import 'package:flutter_app_stack_overflow/features/routing/bottom_navigation.dart';
import 'package:flutter_app_stack_overflow/features/search/search.dart';
import 'package:flutter_app_stack_overflow/features/toc/toc.dart';

class Root extends StatelessWidget {
  final TabItem tabItem;

  Root({this.tabItem});

  @override
  Widget build(BuildContext context) {
    return loadModules();
  }

  Widget loadModules(){
    switch(tabItem){

      case TabItem.home:
        return Home();
        break;
      case TabItem.toc:
        return Toc();
        break;
      case TabItem.search:
        return Search();
        break;
      case TabItem.notes:
        return NotesBookmarks();
        break;
      case TabItem.library:
        return Library();
        break;
    }
  }
}
