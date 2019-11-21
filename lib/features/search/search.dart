import 'package:flutter/material.dart';
import 'package:flutter_app_stack_overflow/features/navigationbar/navigation_bar.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar:  PreferredSize( preferredSize:Size.fromHeight(90),child: NavigationBar('Search',isTabEnabled: true,)),
        body: TabBarView(
          children: <Widget>[
            ListView(
              // This next line does the trick.
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Padding(
                  padding:
                  const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8.0),
                  child: Container(
                    width: 160.0,
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        'CDS Tool 1',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8.0),
                  child: Container(
                    width: 160.0,
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        'CDS Tool 2',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8.0),
                  child: Container(
                    width: 160.0,
                    color: Colors.green,
                    child: Center(
                      child: Text(
                        'CDS Tool 3',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8.0),
                  child: Container(
                    width: 160.0,
                    color: Colors.yellow,
                    child: Center(
                      child: Text(
                        'CDS Tool 4',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8.0),
                  child: Container(
                    width: 160.0,
                    color: Colors.orange,
                    child: Center(
                      child: Text(
                        'CDS Tool 5',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ListView(
              // This next line does the trick.
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Padding(
                  padding:
                  const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8.0),
                  child: Container(
                    width: 160.0,
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        'CDS Tool 1',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8.0),
                  child: Container(
                    width: 160.0,
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        'CDS Tool 2',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8.0),
                  child: Container(
                    width: 160.0,
                    color: Colors.green,
                    child: Center(
                      child: Text(
                        'CDS Tool 3',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8.0),
                  child: Container(
                    width: 160.0,
                    color: Colors.yellow,
                    child: Center(
                      child: Text(
                        'CDS Tool 4',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8.0),
                  child: Container(
                    width: 160.0,
                    color: Colors.orange,
                    child: Center(
                      child: Text(
                        'CDS Tool 5',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),

      ),
    );
  }
}
