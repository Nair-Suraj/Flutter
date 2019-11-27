import 'package:flutter/material.dart';
import 'package:flutter_app_stack_overflow/features/notification/notification_dialog.dart';
import 'package:showcaseview/showcase.dart';
import 'package:showcaseview/showcase_widget.dart';

class NavigationBar extends StatefulWidget {
  final String title;
  final bool isTabEnabled;

  final bool showNotificationIcon;

  final String leftTabText;
  final String rightTabText;
  final TabController tabController;


  NavigationBar(this.title,
      {this.isTabEnabled = false, this.showNotificationIcon = false,this.leftTabText,this.rightTabText,this.tabController});

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  GlobalKey _one = GlobalKey();
  GlobalKey _two = GlobalKey();

  @override
  void initState() {


    super.initState();
    //Start showcase view after current widget frames are drawn.
    WidgetsBinding.instance.addPostFrameCallback((_) => ShowCaseWidget.of(context)
        .startShowCase([_one,_two ]));
  }

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
              ? Showcase(
                key: _one,
                title: 'Notifications',
                description: 'App latest notifications',
                child: IconButton(
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
                  ),
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
              controller:this.widget.tabController,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.blueGrey,
              indicatorColor: Colors.black,
              tabs: <Widget>[
                Tab(
                  child: Text(
                    this.widget.leftTabText,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                Tab(
                  child: Text(
                    this.widget.rightTabText,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
              ],
            )
          : null,
    );
  }
}
