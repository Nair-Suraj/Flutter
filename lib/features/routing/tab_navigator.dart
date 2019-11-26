import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter_app_stack_overflow/features/home_screen/home.dart';
import 'package:flutter_app_stack_overflow/features/library/library.dart';
import 'package:flutter_app_stack_overflow/features/notes_bookmakrs/notes_bookmakrs.dart';
import 'package:flutter_app_stack_overflow/features/routing/bottom_navigation.dart';
import 'package:flutter_app_stack_overflow/features/routing/root.dart';
import 'package:flutter_app_stack_overflow/features/search/search.dart';
import 'package:flutter_app_stack_overflow/features/toc/toc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';

class TabNavigatorRoutes {
  static const String root = '/';
  static const String home = '/home';
  static const String toc = '/toc';
  static const String search = '/search';
  static const String notes = '/notes';
  static const String library = '/library';
}

class TabNavigator extends StatefulWidget {
  TabNavigator({this.navigatorKey, this.tabItem});

  final GlobalKey<NavigatorState> navigatorKey;
  final TabItem tabItem;

  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {

  Map<String, WidgetBuilder> _routeBuilders(
    BuildContext context,
  ) {
    return {
      TabNavigatorRoutes.root: (context) => Root(
            tabItem: widget.tabItem,
          ),
      TabNavigatorRoutes.home: (context) =>
          Home(),
      TabNavigatorRoutes.search: (context) =>
          Search(),
      TabNavigatorRoutes.toc: (context) =>
          Toc(),
      TabNavigatorRoutes.notes: (context) => NotesBookmarks(),
      TabNavigatorRoutes.library: (context) => Library(),
    };
  }

  @override
  Widget build(BuildContext context) {
    final routeBuilders = _routeBuilders(context);
    return Navigator(
      key: widget.navigatorKey,
      initialRoute: TabNavigatorRoutes.root,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          builder: (context) => routeBuilders[routeSettings.name](context),
        );
      },
    );
  }


}
