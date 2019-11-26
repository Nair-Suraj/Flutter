import 'package:flutter/material.dart';
import 'package:flutter_app_stack_overflow/features/bottombar/bottom_bar.dart';
import 'package:flutter_app_stack_overflow/features/drawer/custom_drawer.dart';
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
            preferredSize: Size.fromHeight(100),
            child: NavigationBar(
              'Table of Contents',
              isTabEnabled: true,
            )),
        drawer: CustomDrawer(),
        backgroundColor: Colors.grey[100],
        body: TabBarView(
          children: <Widget>[
            ListView.builder(
              itemBuilder: (BuildContext context, int index) =>
                  EntryItem(data[index], context),
              itemCount: data.length,
            ),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context,index){
                if(index % 2 == 0){
                  return Divider(height: 2,);
                }
                else{
                return Ink(
                  color: Colors.white,
                  child: ListTile(

                    trailing: Icon(Icons.navigate_next),
                    title: Text('Interactive Tool $index',style: TextStyle(color: Colors.black),),
                    onTap: (){},
                  ),
                );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class EntryItem extends StatelessWidget {
  EntryItem(this.entry, this.context);

  final double padding = 5;
  final Node entry;
  final BuildContext context;

  Color textColor = Colors.black;
  Color backgroundColor = Colors.white;

  Widget _buildTiles(Node root) {
    switch (root.level) {
      case 1:
        backgroundColor = Colors.white;
        textColor = Colors.black;
        break;
      case 2:
        backgroundColor = Colors.white;
        textColor = Colors.black;
        break;
      case 3:
        backgroundColor = Colors.white;
        textColor = Colors.black;
        break;
      case 4:
        backgroundColor = Colors.white;
        textColor = Colors.black;
        break;
    }

    if (root.children.isEmpty)
      return ListTile(
        trailing: Icon(Icons.navigate_next),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              root.title,
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        onTap: () {},
      );
    final theme = Theme.of(context).copyWith(dividerColor: Colors.black);

    return Theme(
      data: theme,
      child: Ink(
        color: backgroundColor,
        child: ExpansionTile(
          key: PageStorageKey<Node>(root),
          title: Text(
            root.title,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: root.children.map(_buildTiles).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
