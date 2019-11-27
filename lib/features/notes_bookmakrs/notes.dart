import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Notes extends StatelessWidget {

  final List<Map<String, String>> notesList;
  Notes(this.notesList);
  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 2.0,
      mainAxisSpacing: 2.0,
      staggeredTiles: notesList.map((node)=>StaggeredTile.fit(1)).toList(),
      children: notesList.map((node) {
        Color titleColorCode = Colors.black;
        if (node['title'].contains("Interactive")) {
          titleColorCode = Colors.blueAccent;
        }
        return Card(
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
                      child: Center(child: Column(
                        children: <Widget>[
                          Text(node['text']),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align( alignment: Alignment.bottomRight,child: Text('27/11/2019',style: TextStyle(fontSize: 12,color: Colors.grey[600],fontWeight: FontWeight.bold),)),
                          )
                        ],
                      ))),
                ),
              ],
            ));
      }).toList(),
    );
  }
}
