import 'package:flutter/material.dart';
import 'package:flutter_app_stack_overflow/features/bottombar/bottom_bar.dart';
import 'package:flutter_app_stack_overflow/features/navigationbar/navigation_bar.dart';

class Library extends StatefulWidget {
  @override
  _LibraryState createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  PreferredSize( preferredSize:Size.fromHeight(kToolbarHeight),child: NavigationBar('Library')),
      body: Center(
        child: Text('Center Text'),
      ),

    );
  }
}
