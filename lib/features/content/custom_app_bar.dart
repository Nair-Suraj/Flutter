import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatefulWidget {
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {

  void _select(Choice choice) {
    // Causes the app to rebuild with the new _selectedChoice.
    setState(() {
      _selectedChoice = choice;
    });
  }
  Choice _selectedChoice = choices[0]; // The app's "state".

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Guideline Name',
        style: TextStyle(color: Colors.grey[800]),
      ),
      iconTheme: new IconThemeData(color: Colors.black, opacity: 0.5),
      backgroundColor: Colors.grey[100],
      actions: <Widget>[
        // action button
        IconButton(
          icon: Icon(choices[0].icon),
          onPressed: () {
            _select(choices[0]);
          },
        ),
        // action button
        IconButton(
          icon: Icon(choices[1].icon),
          onPressed: () {
            _select(choices[1]);
          },
        ),
        IconButton(
          icon: Icon(choices[2].icon),
          onPressed: () {
            _select(choices[2]);
          },
        ),


      ],
    );
  }
}
class Choice {
  const Choice({this.title, this.icon});

  final String title;
  final IconData icon;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Search', icon: Icons.search),
  const Choice(title: 'Font', icon: FontAwesomeIcons.font),
  const Choice(title: 'Bookmark', icon: FontAwesomeIcons.bookmark),
  const Choice(title: 'Notes', icon: Icons.note_add),

];
