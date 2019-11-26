import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_app_stack_overflow/features/bottombar/bottom_bar.dart';
import 'package:flutter_app_stack_overflow/features/content/custom_app_bar.dart';
import 'package:flutter_app_stack_overflow/features/content/html_view.dart';
import 'package:flutter_app_stack_overflow/features/home_screen/asso_home_screen.dart';
import 'package:flutter_app_stack_overflow/features/home_screen/home.dart';
import 'package:flutter_app_stack_overflow/features/library/library.dart';
import 'package:flutter_app_stack_overflow/features/notes_bookmakrs/notes_bookmakrs.dart';
import 'package:flutter_app_stack_overflow/features/search/search.dart';
import 'package:flutter_app_stack_overflow/features/toc/toc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';

class ContentView extends StatefulWidget {
  @override
  _ContentViewState createState() => _ContentViewState();
}

class _ContentViewState extends State<ContentView> {
  bool _showNaviAndBottomBar = true;
  ScreenshotController screenshotController=ScreenshotController();

  @override
  Widget build(BuildContext context) {
    void _hideBars() {
      setState(() {
        _showNaviAndBottomBar = !_showNaviAndBottomBar;
        print(_showNaviAndBottomBar);
      });
    }

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: AnimatedContainer(
              height: _showNaviAndBottomBar
                  ? AppBar().preferredSize.height + 50
                  : 0.0,
              duration: Duration(milliseconds: 250),
              child: CustomAppBar()),
        ),
        body: PageView(
            children: <Widget>[
              Screenshot(
                controller: screenshotController,
                child: Container(
                  margin: _showNaviAndBottomBar
                      ? const EdgeInsets.only(
                          top: 20.0, left: 10.0, right: 10.0, bottom: 20.0)
                      : EdgeInsets.all(5.0),
                  decoration: _showNaviAndBottomBar
                      ? BoxDecoration(
                          border: Border.all(color: Colors.blueAccent),
                          color: Colors.white)
                      : BoxDecoration(
                          border: Border.all(color: Colors.transparent),
                          color: Colors.white),
                  child: GestureDetector(
                      onTap: () {
                        _hideBars();
                      },
                      child: HtmlView('assets/content/DEPH105_8.4.2.0.html')),
                ),
              ),
              Container(
                margin: _showNaviAndBottomBar
                    ? const EdgeInsets.only(
                        top: 20.0, left: 10.0, right: 10.0, bottom: 20.0)
                    : EdgeInsets.all(5.0),
                decoration: _showNaviAndBottomBar
                    ? BoxDecoration(
                        border: Border.all(color: Colors.blueAccent),
                        color: Colors.white)
                    : BoxDecoration(
                        border: Border.all(color: Colors.transparent),
                        color: Colors.white),
                child: GestureDetector(
                    onTap: () {
                      _hideBars();
                    },
                    child: AbsorbPointer(
                        child:
                            HtmlView('assets/content/DEPH105_8.4.9.0.html'))),
              ),
              Container(
                margin: _showNaviAndBottomBar
                    ? const EdgeInsets.only(
                        top: 20.0, left: 10.0, right: 10.0, bottom: 20.0)
                    : EdgeInsets.all(5.0),
                decoration: _showNaviAndBottomBar
                    ? BoxDecoration(
                        border: Border.all(color: Colors.blueAccent),
                        color: Colors.white)
                    : BoxDecoration(
                        border: Border.all(color: Colors.transparent),
                        color: Colors.white),
                child: GestureDetector( onTap:(){_hideBars();},child: AbsorbPointer(child: HtmlView('assets/content/DEPH105_4.5.3.0.html'))),
              ),
            ],
            controller: PageController(
              viewportFraction: _showNaviAndBottomBar ? 0.8 : 1,
              initialPage: 0,
            )),
       );
  }

  void _captureTabChanges() async {
    final directory = (await getApplicationDocumentsDirectory())
        .path; //from path_provide package
    String fileName = DateTime.now().toIso8601String();
    String path = '$directory/$fileName.png';
    screenshotController.capture(path: path).then((File image) {
      print(path);
    }).catchError((onError) {
      print(onError);
    });
  }
}
