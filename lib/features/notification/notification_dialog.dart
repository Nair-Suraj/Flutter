import 'package:flutter/material.dart';
import 'package:flutter_app_stack_overflow/features/header_list/header_list.dart';

class CustomDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }

  Widget dialogContent(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Container(
        margin: EdgeInsets.only(left: 0.0, right: 0.0),
        child: Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                top: 0.0,
              ),
              margin: EdgeInsets.only(top: 13.0, right: 8.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(0.0),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.white,
                      blurRadius: 0.0,
                      offset: Offset(0.0, 0.0),
                    ),
                  ]),
              child: HeaderList(<ListItem>[
                HeadingItem("Notifications"),
                MessageItem("New guideline released",
                    "STEMI Guideline is available now", date: "20 Nov 2019"),
                MessageItem(
                    "2 New guidelines update",
                    "Content improvements in Synkopen and Prävention ",
                    date: "10 Nov 2019"),
                MessageItem("New Tools Released",
                    "Take the updates to get the latest tools", date: "15 Oct 2019"),
                MessageItem(
                    "New version is out...",
                    "DGK newer version is avilable on App stores",
                    date: "1 April 2019"),
              ]),
            ),
            Positioned(
              right: 0.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Align(
                  alignment: Alignment.topRight,
                  child: CircleAvatar(
                    radius: 14.0,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.close, color: Colors.red),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
