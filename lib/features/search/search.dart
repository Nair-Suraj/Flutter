import 'dart:math';

import 'package:floating_search_bar/floating_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_stack_overflow/features/drawer/custom_drawer.dart';
import 'package:flutter_app_stack_overflow/features/navigationbar/navigation_bar.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

List<String> vhdGuidelineSearchList = const [
  'Text Contains Word heart and it belongs to guideline VHD',
  'Text Contains Word Blood and it belongs to guideline VHD',
  'Text Contains Word Age and it belongs to guideline VHD',
  'Text Contains Word Tool and it belongs to guideline VHD',
  'Lots of VHD words',
];

List<String> cvdGuidelineSearchList = const [
  'Text Contains Word heart and it belongs to guideline CVD',
  'Text Contains Word Blood and it belongs to guideline CVD',
  'Text Contains Word Age and it belongs to guideline CVD',
  'Text Contains Word Tool and it belongs to guideline CVD',
  'Lots of CVD words',
];

List<String> vhdInteractiveSearchList = const [
  'Text Contains Word heart within tool itself and it belongs to guideline VHD',
  'Text Contains Word Blood within tool itself and it belongs to guideline VHD',
  'Text Contains Word Age within tool itself and it belongs to guideline VHD',
  'Text Contains Word Tool within tool itself  and it belongs to guideline VHD',
  'Lots of VHD words',
];
List<String> vhdTocSearchList = const [
  "Chapter 1 title which contain word Blood",
  "Chapter 2 title which contain word heart",
];

List<String> stemTocSearchList = const [
  "Chapter 10 which contain word Association",
  "Chapter 2 which contain word and and lots of and",
];

List<String> vhdNotesList = const [
  "Content blood searched in Notes Section",
  "Content heart searched in Bookmarks section ",
  "Also it can search content from bookmarked seaction of Interactive Tools"
];

Map<String, List<String>> categoryList = {
  "VHD#GL": vhdGuidelineSearchList,
  "CVD#GL": cvdGuidelineSearchList,
  "VHD#IT": vhdInteractiveSearchList,
  "VHD#TOC": vhdTocSearchList,
  "STEM-1#TOC": stemTocSearchList,
  "VHD#NOTES": vhdNotesList,
};

List items = <ListItem>[
  HeadingItem(
    "Guidelines",
  ),
  SearchItem("VHD#GL", vhdGuidelineSearchList),
  SearchItem("CVD#GL", cvdGuidelineSearchList),
  HeadingItem(
    "Interactive Tools",
  ),
  SearchItem("VHD#IT", vhdInteractiveSearchList),
  HeadingItem(
    "Table of Contents",
  ),
  SearchItem("VHD#TOC", vhdTocSearchList),
  SearchItem("STEM-1#TOC", stemTocSearchList),
  HeadingItem(
    "Notes",
  ),
  SearchItem("VHD#NOTES", vhdNotesList),
];

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: FloatingSearchBar.builder(
          itemBuilder: (context, index) {
            final item = items[index];
            if (item is HeadingItem) {
              return Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                  height: 40,
                  color: Colors.grey[300],
                  child: Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        item.heading,
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ),
                ),
              );
            } else if (item is SearchItem) {
              return Column(
                children: item.searchListName
                    .map(
                      (title) => ListTile(
                        onTap: () {},
                        title: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(title),
                        ),
                        leading: CircleAvatar(
                          child: Text(
                            item.guidelineName
                                .substring(0, item.guidelineName.indexOf("#")),
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              );
            }
            return Text("d");
          },
          decoration: InputDecoration.collapsed(
            hintText: "Search...",
          ),
          trailing: Icon(Icons.search),
          onChanged: (String value) {
            print(value);
            for (int i = 0; i < items.length; i++) {
              if (items[i] is SearchItem) {
                SearchItem item = items[i];

                setState(() {
                  item.searchListName = checkForSearchWord(
                      categoryList[item.guidelineName], value);

//                  item.searchListName=getOnly5topObjects(checkForSearchWord(
//                      categoryList[item.guidelineName], value));
//

                });
              }
            }

          },
          drawer: CustomDrawer(),
          itemCount: items.length,
        ),
      ),
    );
  }

  List<String> getOnly5topObjects(List<String> list){
    var newList = list.sublist(0,2);
    newList.add("more Values");
    return newList;

  }

  List<String> checkForSearchWord(List<String> list, value) {
    SearchItem item = items[1];
    item.searchListName.asMap().forEach((index, title) {
      return Text('$title');
    });

    List<String> filterList;

    filterList = list.where((element) {
      return element.toLowerCase().contains(value.toLowerCase());
    }).toList();

    return filterList;
  }
}

abstract class ListItem {}

class HeadingItem implements ListItem {
  final String heading;

  HeadingItem(this.heading);
}

class SearchItem implements ListItem {
  final String guidelineName;
  List<String> searchListName;

  SearchItem(this.guidelineName, this.searchListName);
}
