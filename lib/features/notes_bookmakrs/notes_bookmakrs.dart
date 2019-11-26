import 'package:flutter/material.dart';
import 'package:flutter_app_stack_overflow/features/bottombar/bottom_bar.dart';
import 'package:flutter_app_stack_overflow/features/navigationbar/navigation_bar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class NotesBookmarks extends StatefulWidget {
  @override
  _NotesBookmarksState createState() => _NotesBookmarksState();
}

class _NotesBookmarksState extends State<NotesBookmarks> {
  List<Map<String, String>> notesList = [
    {"title": "Content Title 1", "text": "Notes Text Guideline"},
    {"title": "Interactives Tool 1", "text": "Notes Text Tool"},
    {"title": "Content Title 3", "text": "Notes Text Tools 2"},
    {"title": "Interactives Title 4", "text": "Notes Text"},
    {"title": "Content Title 5", "text": "Notes Text 5"},
    {"title": "Interactives Tool 5", "text": "Notes Text Association"},
    {"title": "Content Title 6", "text": "Notes Text Tool blood pressure"},
    {"title": "Interactives Tool 7", "text": "Notes Text Demo"},
    {"title": "Content Title 8", "text": "Notes Text Lorem"},
    {"title": "Interactives Tool 8", "text": "Notes Text Demo"},
  ];
  Color recentButtonColorCode = Colors.blue;
  Color toolButtonColorCode = Colors.black54;
  Color contentButtonColorCode = Colors.black54;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: NavigationBar('Notes&Bookmarks')),
      body: StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 2.0,
        mainAxisSpacing: 2.0,
        staggeredTiles: [
          StaggeredTile.fit(1),
          StaggeredTile.fit(1),
          StaggeredTile.fit(1),
          StaggeredTile.fit(1),
          StaggeredTile.fit(1),
          StaggeredTile.fit(1),
          StaggeredTile.fit(1),
          StaggeredTile.fit(1),
        ],
        children: notesList.map((node) {
          Color titleColorCode = Colors.black;
          if (node['title'].contains("Interactives")) {
            titleColorCode = Colors.blueAccent;
          }
          return SizedBox(
            height: 9 * node['text'].length.toDouble(),
            child: Card(
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, bottom: 0.0, left: 2, right: 2),
                      child: Center(
                          child: Container(
                              height: 20,
                              child: Text(
                                node['title'],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: titleColorCode),
                              ))),
                    ),
                    Divider(thickness: 1,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          color: Colors.white,
                          child: Center(child: Text(node['text']))),
                    ),
                  ],
                )),
          );
        }).toList(),
      ),
      floatingActionButton: Card(
        elevation: 2,
        shape: StadiumBorder(
            side: BorderSide(
          color: Colors.green,
          width: 1,
        )),
        child: Container(
          width: 300,
          height: 35,
          child: Row(
            children: <Widget>[
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      notesList
                          .sort((a, b) => a['text'].compareTo(b['text']));
                      recentButtonColorCode = Colors.blue;
                      toolButtonColorCode = Colors.black54;
                      contentButtonColorCode = Colors.black54;
                    });
                  },
                  child: Center(
                      child: Text(
                    'Recent',
                    style: TextStyle(
                        color: recentButtonColorCode,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              VerticalDivider(
                thickness: 1,
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      recentButtonColorCode = Colors.black54;
                      toolButtonColorCode = Colors.blue;
                      contentButtonColorCode = Colors.black54;
                      notesList
                          .sort((a, b) => b['title'].compareTo(a['title']));
                    });
                  },
                  child: Center(
                      child: Text(
                    'Tools',
                    style: TextStyle(color: toolButtonColorCode,fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              VerticalDivider(
                thickness: 1,
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      recentButtonColorCode = Colors.black54;
                      toolButtonColorCode = Colors.black54;
                      contentButtonColorCode = Colors.blue;
                      notesList
                          .sort((a, b) => a['title'].compareTo(b['title']));
                    });
                  },
                  child: Center(
                      child: Text(
                    'Contents',
                    style: TextStyle(color: contentButtonColorCode,fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
