import 'package:flutter/material.dart';

List<Widget> sliverList(int size, int sliverChildCount) {
  var widgetList = new List<Widget>();
  for (int index = 0; index < size; index++)
    widgetList
      ..add(SliverAppBar(
        title: Text("Title $index"),
        pinned: true,
      ))
      ..add(SliverFixedExtentList(
        itemExtent: 70.0,
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            color: Colors.lightBlue[100 * (index % 9)],
            child: Text('list item $index'),
          );
        }, childCount: sliverChildCount),
      ));

  return widgetList;
}
