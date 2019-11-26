import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_app_stack_overflow/features/routing/bottom_navigation.dart';
import 'package:flutter_app_stack_overflow/features/routing/tab_navigator.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';

class App extends StatefulWidget {

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  TabItem _currentTab = TabItem.home;

  ScreenshotController screenshotController=ScreenshotController();
  void _selectTab(TabItem tabItem) {
//    _captureTabChanges();
    if (tabItem == _currentTab) {
      _navigatorKeys[tabItem].currentState.popUntil((route) => route.isFirst);
    } else {
      setState(() => _currentTab = tabItem);
    }
  }

  Map<TabItem, GlobalKey<NavigatorState>> _navigatorKeys = {
    TabItem.home: GlobalKey<NavigatorState>(),
    TabItem.toc: GlobalKey<NavigatorState>(),
    TabItem.search: GlobalKey<NavigatorState>(),
    TabItem.notes: GlobalKey<NavigatorState>(),
    TabItem.library: GlobalKey<NavigatorState>(),
  };

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
            !await _navigatorKeys[_currentTab].currentState.maybePop();
        if (isFirstRouteInCurrentTab) {
          if (_currentTab != TabItem.home) {
            _selectTab(TabItem.home);
            return false;
          }
        }
        return isFirstRouteInCurrentTab;
      },

      child: Scaffold(
        body: Screenshot(
          controller: screenshotController,
          child: Stack(
            children: <Widget>[
              _buildOffStageNavigator(TabItem.home),
              _buildOffStageNavigator(TabItem.toc),
              _buildOffStageNavigator(TabItem.search),
              _buildOffStageNavigator(TabItem.notes),
              _buildOffStageNavigator(TabItem.library),
            ],
          ),
        ),

        bottomNavigationBar:  BottomNavigation(
          currentTab: _currentTab,
          onSelectTab: _selectTab,
        ),
      ),


    );

  }


  Widget _buildOffStageNavigator(TabItem tabItem){
    return Offstage(
      offstage: _currentTab !=tabItem,
      child: TabNavigator(navigatorKey: _navigatorKeys[tabItem],tabItem: tabItem,),
    );
  }

  void _captureTabChanges() async {
    final directory = (await getApplicationDocumentsDirectory())
        .path; //from path_provide package
    String fileName = DateTime.now().toIso8601String();
    String path = '$directory/$fileName.png';
    if(_currentTab!=TabItem.library)
    screenshotController.capture(path: path).then((File image) {
      print(path);
    }).catchError((onError) {
      print(onError);
    });
  }
}
