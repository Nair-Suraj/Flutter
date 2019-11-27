import 'package:flutter/material.dart';
import 'package:flutter_app_stack_overflow/features/notes_bookmakrs/notes_bookmakrs.dart';

class BookMarks extends StatelessWidget {
  final List<BookMarksItem> bookmarksList;

  BookMarks(this.bookmarksList);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView.separated(
        itemCount: bookmarksList.length,
        separatorBuilder: (context, index) => Divider(
          color: Colors.black,
        ),
        itemBuilder: (context, index) {
          return ListTile(
            dense:true,
            trailing: Icon(Icons.navigate_next),
            subtitle: Text(bookmarksList[index].date),
            contentPadding: EdgeInsets.only(top: 0.0, bottom: 0.0),
            leading: Padding(
              padding: const EdgeInsets.only(top:8.0,left: 15),
              child: CircleAvatar(
                child: Text(bookmarksList[index].chapterName.contains('Tool')?'T':'C',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:4.0,bottom: 4.0),
                  child: Text(
                    bookmarksList[index].guidelineName,
                    style: TextStyle(color: bookmarksList[index].guidelineColor,fontSize: 18,fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  bookmarksList[index].chapterName,
                  style: TextStyle(color: Colors.black,fontSize: 15),
                ),
              ],
            ),
            onTap: () {},
          );
        },
      ),
    );
  }
}
