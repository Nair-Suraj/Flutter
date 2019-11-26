import 'package:flutter/material.dart';
import 'package:flutter_app_stack_overflow/features/notification/notification_dialog.dart';

class NavigationBar extends StatefulWidget {
  final String title;
  final bool isTabEnabled;

  final bool showNotificationIcon;

  NavigationBar(this.title,
      {this.isTabEnabled = false, this.showNotificationIcon = false});

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 2,
      backgroundColor: Colors.white,
      title: Padding(
        padding: const EdgeInsets.only(top:10.0),
        child: Container(
            alignment: Alignment.center,
            child: Text(
              this.widget.title,
              style: TextStyle(fontSize: 20, color: Colors.black),
            )),
      ),
      iconTheme: new IconThemeData(color: Colors.black),
      actions: [
        Builder(
          builder: (context) => this.widget.showNotificationIcon
              ? IconButton(
                  icon: Stack(
                    children: <Widget>[
                      Icon(Icons.notifications_none),
                      Positioned(
                        top: 0.0,
                        left: 9.0,
                        child: Container(
                          padding: EdgeInsets.all(2),
                          decoration: new BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          constraints: BoxConstraints(
                            minWidth: 12,
                            minHeight: 12,
                          ),
                          child: Text(
                            '2',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    ],
                  ),
                  onPressed: () => showDialog(
                      context: context, builder: (context) => CustomDialog()),
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                )
              : new Opacity(
                  opacity: 0.0,
                  child: new Padding(
                    padding: const EdgeInsets.only(
                      left: 16.0,
                    ),
                  )),
        ),
      ],
      bottom: this.widget.isTabEnabled
          ? TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.blueGrey,
              indicatorColor: Colors.black,
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'Contents',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                Tab(
                  child: Text(
                    'Tools',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
              ],
            )
          : null,
    );
  }
}
