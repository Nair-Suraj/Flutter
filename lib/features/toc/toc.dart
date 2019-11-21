import 'package:flutter/material.dart';
import 'package:flutter_app_stack_overflow/features/bottombar/bottom_bar.dart';
import 'package:flutter_app_stack_overflow/features/home_screen/home.dart';
import 'package:flutter_app_stack_overflow/features/navigationbar/navigation_bar.dart';

import 'toc_item.dart';

class Toc extends StatefulWidget {
  @override
  _TocState createState() => _TocState();
}

class _TocState extends State<Toc> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTileSample();
  }
}

class ExpansionTileSample extends StatefulWidget {
  @override
  _ExpansionTileSampleState createState() => _ExpansionTileSampleState();
}

class _ExpansionTileSampleState extends State<ExpansionTileSample> {
  int bottomNavigationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(

        appBar: PreferredSize(
            preferredSize: Size.fromHeight(90),
            child: NavigationBar('Table of Contents',isTabEnabled: true,)),
        backgroundColor: Colors.grey[100],
        body: TabBarView(
          children: <Widget>[
            ListView.builder(
              itemBuilder: (BuildContext context, int index) =>
                  EntryItem(data[index], context),
              itemCount: data.length,
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



class EntryItem extends StatelessWidget {
  EntryItem(this.entry, this.context);

  final double padding = 10;
  final Node entry;
  final BuildContext context;

  Color textColor = Colors.black;
  Color backgroundColor = Colors.white;

  Widget _buildTiles(Node root) {
    switch (root.level) {
      case 1:
        backgroundColor = Color(0xFFD9D9D9);

//        backgroundColor=Colors.amber;
        textColor = Colors.black;
        break;
      case 2:
        backgroundColor = Color(0xFFe7e7e7);
//        backgroundColor=Colors.pink;
        textColor = Colors.black;
        break;
      case 3:
        backgroundColor = Color(0xFFeeeeee);
//        backgroundColor=Colors.indigo;
        textColor = Colors.black;
        break;
      case 4:
        backgroundColor = Color(0xFFf5f5f5);
//      backgroundColor=Colors.black;
        textColor = Colors.black;
        break;
    }

    if (root.children.isEmpty)
      return Ink(
        color: backgroundColor,
        child: ListTile(
            contentPadding:
                EdgeInsets.only(left: padding * root.level, right: 5.0),
            title: Container(
              color: backgroundColor,
              child: Text(
                root.title,
                style: TextStyle(color: textColor),
              ),
            )),
      );

    return Ink(
      color: backgroundColor,
      child: ExpansionTile(
        key: PageStorageKey<Node>(root),
        title: Padding(
          padding: EdgeInsets.only(left: padding * root.level, right: 5.0),
          child: Text(
            root.title,
            style: TextStyle(color: textColor),
          ),
        ),
        children: root.children.map(_buildTiles).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
