import 'package:flutter/material.dart';
import 'package:flutter_app_stack_overflow/features/routing/app.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io' as io;

class ScreenPreview extends StatefulWidget {
  @override
  _ScreenPreviewState createState() => _ScreenPreviewState();
}

class _ScreenPreviewState extends State<ScreenPreview> {
  List file = new List();

  @override
  Widget build(BuildContext context) {
    queryFolder();
//    return StaggeredGridView.count(
//        crossAxisCount: 4,
//        crossAxisSpacing: 20.0,
//        scrollDirection: Axis.horizontal,
//        mainAxisSpacing: 10.0,
//        staggeredTiles: file.map((title) => StaggeredTile.fit(1)).toList(),
//        children: file.map((title) => Card(color: Colors.white, child: Image.file(title))).toList());
//

//    return Container(
//      color: Colors.amber,
//      child: PageView(
//        controller: PageController(
//          viewportFraction: 1,
//        ),
//          children: file
//              .map((path) => AspectRatio(aspectRatio:487/10,child: Container(decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.fitWidth,alignment: FractionalOffset.topCenter,image: FileImage(path))))))
//              .toList()),
//    );
//
//    return PageView(
//        children: file
//            .map((path) => AspectRatio(
//                aspectRatio:362/612,
//                child: Container(
//                    decoration: BoxDecoration(
//                        image: DecorationImage(
//                            fit: BoxFit.fitWidth,
//                            alignment: FractionalOffset.center,
//                            image: FileImage(path))))))
//            .toList());




      return Center(
        child: SizedBox(
          height: 400,
          child: ListView(
            padding: EdgeInsets.only(right: 60,left: 60),
            shrinkWrap: false,
            scrollDirection: Axis.horizontal,
              children: file
                .map((path) => Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    elevation: 6,
                  color: Colors.blueGrey,
                    child: AspectRatio(
                        aspectRatio:1123/1893,
                        child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fitWidth,
                                    alignment: FractionalOffset.center,
                                    image: FileImage(path))))),
                  ),
                ))
                .toList()

          ),
        ),
      );

  }

  void queryFolder() async {
    final directory = (await getApplicationDocumentsDirectory()).path;
    final myDir = io.Directory(directory);

    setState(() {
      file = myDir.listSync();
    });
  }
}
