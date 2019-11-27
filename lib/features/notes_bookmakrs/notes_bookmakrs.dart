import 'package:flutter/material.dart';
import 'package:flutter_app_stack_overflow/features/bottombar/bottom_bar.dart';
import 'package:flutter_app_stack_overflow/features/navigationbar/navigation_bar.dart';
import 'package:flutter_app_stack_overflow/features/notes_bookmakrs/bookmarks.dart';
import 'package:flutter_app_stack_overflow/features/notes_bookmakrs/notes.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class NotesBookmarks extends StatefulWidget {
  @override
  _NotesBookmarksState createState() => _NotesBookmarksState();
}
class BookMarksItem{
  String guidelineName;
  String chapterName;
  String date;
  Color guidelineColor;
  BookMarksItem(this.guidelineName,this.chapterName,this.date,this.guidelineColor);
}
class _NotesBookmarksState extends State<NotesBookmarks> with SingleTickerProviderStateMixin{
  final List<Map<String, String>> notesList = [
    {"title": "Content Title 1", "text": "Notes Text Guideline Long Long Long Long Long Long Long Long Long Long Long Long Long Long Long Text Text"},
    {"title": "Interactive Tool 1", "text": "Notes Text Tool"},
    {"title": "Content Title 3", "text": "Notes Text Tools 2"},
    {"title": "Interactive Title 4", "text": "Notes Text"},
    {"title": "Content Title 5", "text": "Notes Text 5 Long Long Long Long Long Long Long  Text Dummy Text"},
    {"title": "Interactive Tool 5", "text": "Notes Text Association"},
    {"title": "Content Title 6", "text": "Notes Text Tool blood pressure"},
    {"title": "Interactive Tool 7", "text": "Notes Text Demo"},
    {"title": "Content Title 8", "text": "Notes Text Lorem Long Long Long Long Long Long Long and Long"},
    {"title": "Interactive Tool 8", "text": "Notes Text Demo Lorem Lorem"},
    {"title": "Content Title 1", "text": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."},
    {"title": "Content Title 1", "text": "“Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.”"},
  ];

  final List<BookMarksItem> bookmarksList = [
    BookMarksItem("Dyslip","Content Chapter 1 Bookmarked","27/11/2019",Colors.redAccent),
    BookMarksItem("Afib","Content Chapter 2 Bookmarked","01/11/2019",Colors.blueAccent),
    BookMarksItem("Afib","Interactive Tool 3 Bookmarked","25/11/2019",Colors.blueAccent),
    BookMarksItem("Dyslip","Content Chapter 3 Bookmarked","10/11/2019",Colors.redAccent),
    BookMarksItem("Dyslip","Interactive Tool 1 Bookmarked","12/11/2019",Colors.redAccent),
    BookMarksItem("Afib","Interactive Tool Algo Bookmarked","13/11/2019",Colors.blueAccent),
    BookMarksItem("Afib","Interactive Tool Calci Bookmarked","12/11/2019",Colors.blueAccent),
    BookMarksItem("Dyslip","Interactive Tool Demo Bookmarked","15/11/2019",Colors.redAccent),
    BookMarksItem("Dyslip","Content Chapter 5 Bookmarked","02/11/2019",Colors.redAccent),
  ];


  Color recentButtonColorCode = Colors.blue;
  Color toolButtonColorCode = Colors.black54;
  Color contentButtonColorCode = Colors.black54;

  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 2);
    bookmarksList
        .sort((a, b) => b.date.compareTo(a.date));
    notesList
        .sort((a, b) => a['text'].compareTo(b['text']));
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: NavigationBar(
            'Notes&Bookmarks',
            isTabEnabled: true,
            leftTabText: 'Notes',
            rightTabText: 'Bookmarks',
            tabController: _tabController,
          )),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Notes(notesList),
          BookMarks(bookmarksList),
        ],
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
                      if (_tabController.index == 0) {
                        notesList
                            .sort((a, b) => a['text'].compareTo(b['text']));
                      } else {
                        bookmarksList
                            .sort((a, b) => b.date.compareTo(a.date));
                      }
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
                      if (_tabController.index == 0) {
                        notesList
                            .sort((a, b) => b['title'].compareTo(a['title']));
                      } else {
                        bookmarksList
                            .sort((a, b) => b.chapterName.compareTo(a.chapterName));
                      }
                      recentButtonColorCode = Colors.black54;
                      toolButtonColorCode = Colors.blue;
                      contentButtonColorCode = Colors.black54;

                    });
                  },
                  child: Center(
                      child: Text(
                    'Tools',
                    style: TextStyle(
                        color: toolButtonColorCode,
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
                      if (_tabController.index == 0) {
                        notesList
                            .sort((a, b) => a['title'].compareTo(b['title']));
                      } else {
                        bookmarksList
                            .sort((a, b) => a.chapterName.compareTo(b.chapterName));
                      }

                      recentButtonColorCode = Colors.black54;
                      toolButtonColorCode = Colors.black54;
                      contentButtonColorCode = Colors.blue;

                    });
                  },
                  child: Center(
                      child: Text(
                    'Contents',
                    style: TextStyle(
                        color: contentButtonColorCode,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked,
    );
  }
}
