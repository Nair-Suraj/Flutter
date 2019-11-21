import 'package:flutter/material.dart';

class NavigationBar extends StatefulWidget {
  String title;
  bool isTabEnabled = false;

  NavigationBar(this.title, {this.isTabEnabled=false});

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      title: Container(
          alignment: Alignment.center,
          child: Text(
            this.widget.title,
            style: TextStyle(fontSize: 28, color: Colors.black),
          )),
      iconTheme: new IconThemeData(color: Colors.green),
      actions: [
        Builder(
          builder: (context) => IconButton(
            icon: Stack(
              children: <Widget>[
                Icon(Icons.menu, color: Color(0XFF8E8E8E)),
                Positioned(
                  top: 0.0,
                  right: 0.0,
                  left: 22.0,
                  child: Icon(Icons.brightness_1,
                      size: 12.0, color: Colors.redAccent),
                )
              ],
            ),
            onPressed: () => Scaffold.of(context).openEndDrawer(),
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          ),
        ),
      ],
      bottom: this.widget.isTabEnabled? TabBar(
        tabs: <Widget>[
          Tab(
            child: Text(
              'Contents',
              style: TextStyle(color: Colors.black),
            ),
          ),
          Tab(
            child: Text(
              'Tools',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ):null,
    );
  }
}
