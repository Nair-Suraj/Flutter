import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_stack_overflow/features/content/content_view.dart';
import 'package:flutter_app_stack_overflow/features/toc/toc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top:5.0,left:16.0,right: 16.0),
        child: StaggeredGridView.count(
          crossAxisCount: 4,
          crossAxisSpacing: 0.0,
          mainAxisSpacing: 10.0,
          staggeredTiles: [
            StaggeredTile.fit(1),
            StaggeredTile.fit(1),
            StaggeredTile.fit(1),
            StaggeredTile.fit(1),
            StaggeredTile.fit(4),
            StaggeredTile.fit(4),
            StaggeredTile.fit(4),
            StaggeredTile.fit(4),
            StaggeredTile.fit(4),
            StaggeredTile.fit(4),
            StaggeredTile.fit(4),
          ],
          children: <Widget>[
            InkWell(
              onTap: (){
                Navigator.of(context).push(PageRouteBuilder(opaque: false, pageBuilder: (BuildContext context, _, __) => ContentView()));
              },
              child: Card(
                elevation: 4,
                child: Container(
                  color: Colors.grey[100],
                  height: 110,
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Card( elevation: 5,shape: CircleBorder(), child: CircleAvatar(maxRadius:25,backgroundColor: Color(0xff3c70a4),child: Text('C',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white),),)),
                        Padding(
                          padding: const EdgeInsets.only(left:5.0),
                          child: Text(
                            'Most used chapter 1',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 4,
              child: Container(
                color: Colors.grey[100],
                height: 110,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Card( elevation: 5,shape: CircleBorder(), child: CircleAvatar(maxRadius:25,backgroundColor: Color(0xff3c70a4),child: Text('C',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white),),)),
                      Padding(
                        padding: const EdgeInsets.only(left:5.0),
                        child: Text(
                          'Most used chapter 1',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 4,
              child: Container(
                color: Colors.grey[100],
                height: 110,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Card( elevation: 5,shape: CircleBorder(), child: CircleAvatar(maxRadius:25,backgroundColor: Color(0xff00909e),child: Text('T',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white),),)),
                      Padding(
                        padding: const EdgeInsets.only(left:5.0),
                        child: Text(
                          'Most used Tool 1',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              elevation: 4,
              child: Container(
                color: Colors.grey[100],
                height: 110,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Card( elevation: 5,shape: CircleBorder(), child: CircleAvatar(maxRadius:25,backgroundColor: Color(0xff00909e),child: Text('T',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white),),)),
                      Padding(
                        padding: const EdgeInsets.only(left:5.0),
                        child: Text(
                          'Most used Tool 2',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            CarouselSlider(
              height: 90.0,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              items: [1,2,3,].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Material(
                        elevation: 4,
                        child: Container(
                            width: MediaQuery.of(context).size.width,

                            decoration: BoxDecoration(
                                color: Colors.grey[100]
                            ),
                            child: Center(child: Text('Sponsor $i', style: TextStyle(fontSize: 16.0),))
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Guidelines',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'View All',
                  style: TextStyle(color: Colors.green),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 150,
              child: ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, right: 8.0),
                    child: Card(
                      elevation:3,
                      child: Container(
                        width: 130.0,
                        color: Colors.grey[100],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Card( elevation: 5,shape: CircleBorder(), child: CircleAvatar(maxRadius:35,backgroundColor: Colors.blueAccent,child: Text('G',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white),),)),
                            Text(
                              'Guideline 1',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, right: 8.0),
                    child: Card(
                      elevation:3,
                      child: Container(
                        width: 130.0,
                        color: Colors.grey[100],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Card( elevation: 5,shape: CircleBorder(), child: CircleAvatar(maxRadius:35,backgroundColor: Colors.blueAccent,child: Text('G',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white),),)),
                            Text(
                              'Guideline 2',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, right: 8.0),
                    child: Card(
                      elevation:3,
                      child: Container(
                        width: 130.0,
                        color: Colors.grey[100],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Card( elevation: 5,shape: CircleBorder(), child: CircleAvatar(maxRadius:35,backgroundColor: Colors.blueAccent,child: Text('G',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white),),)),
                            Text(
                              'Guideline 3',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, right: 8.0),
                    child: Card(
                      elevation:3,
                      child: Container(
                        width: 130.0,
                        color: Colors.grey[100],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Card( elevation: 5,shape: CircleBorder(), child: CircleAvatar(maxRadius:35,backgroundColor: Colors.blueAccent,child: Text('G',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white),),)),
                            Text(
                              'Guideline 4',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, right: 8.0),
                    child: Card(
                      elevation:3,
                      child: Container(
                        width: 130.0,
                        color: Colors.grey[100],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Card( elevation: 5,shape: CircleBorder(), child: CircleAvatar(maxRadius:35,backgroundColor: Colors.blueAccent,child: Text('G',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white),),)),
                            Text(
                              'Guideline 5',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Clinical Decision Support Tools',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'View All',
                  style: TextStyle(color: Colors.green),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 150,
              child: ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, right: 8.0),
                    child: Card(
                      elevation:3,
                      child: Container(
                        width: 130.0,
                        color: Colors.grey[100],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Card( elevation: 5,shape: CircleBorder(), child: CircleAvatar(maxRadius:35,backgroundColor: Colors.blueGrey,child: Text('CDS',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white),),)),
                            Text(
                              'Tool 1',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, right: 8.0),
                    child: Card(
                      elevation:3,
                      child: Container(
                        width: 130.0,
                        color: Colors.grey[100],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Card( elevation: 5,shape: CircleBorder(), child: CircleAvatar(maxRadius:35,backgroundColor: Colors.blueGrey,child: Text('CDS',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white),),)),
                            Text(
                              'Tool 2',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, right: 8.0),
                    child: Card(
                      elevation:3,
                      child: Container(
                        width: 130.0,
                        color: Colors.grey[100],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Card( elevation: 5,shape: CircleBorder(), child: CircleAvatar(maxRadius:35,backgroundColor: Colors.blueGrey,child: Text('CDS',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white),),)),
                            Text(
                              'Tool 3',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, right: 8.0),
                    child: Card(
                      elevation:3,
                      child: Container(
                        width: 130.0,
                        color: Colors.grey[100],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Card( elevation: 5,shape: CircleBorder(), child: CircleAvatar(maxRadius:35,backgroundColor: Colors.blueGrey,child: Text('CDS',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white),),)),
                            Text(
                              'Tool 4',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, right: 8.0),
                    child: Card(
                      elevation:3,
                      child: Container(
                        width: 130.0,
                        color: Colors.grey[100],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Card( elevation: 5,shape: CircleBorder(), child: CircleAvatar(maxRadius:35,backgroundColor: Colors.blueGrey,child: Text('CDS',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white),),)),
                            Text(
                              'Tool 5',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Interactive tools',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'View All',
                  style: TextStyle(color: Colors.green),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: 150,
              child: ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, right: 8.0),
                    child: Card(
                      elevation:3,
                      child: Container(
                        width: 130.0,
                        color: Colors.grey[100],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Card( elevation: 5,shape: CircleBorder(), child: CircleAvatar(maxRadius:35,backgroundColor: Color(0xff00909e),child: Text('T',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white),),)),
                            Text(
                              'Tool 1',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, right: 8.0),
                    child: Card(
                      elevation:3,
                      child: Container(
                        width: 130.0,
                        color: Colors.grey[100],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Card( elevation: 5,shape: CircleBorder(), child: CircleAvatar(maxRadius:35,backgroundColor: Color(0xff00909e),child: Text('T',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white),),)),
                            Text(
                              'Tool 2',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, right: 8.0),
                    child: Card(
                      elevation:3,
                      child: Container(
                        width: 130.0,
                        color: Colors.grey[100],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Card( elevation: 5,shape: CircleBorder(), child: CircleAvatar(maxRadius:35,backgroundColor: Color(0xff00909e),child: Text('T',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white),),)),
                            Text(
                              'Tool 3',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, right: 8.0),
                    child: Card(
                      elevation:3,
                      child: Container(
                        width: 130.0,
                        color: Colors.grey[100],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Card( elevation: 5,shape: CircleBorder(), child: CircleAvatar(maxRadius:35,backgroundColor: Color(0xff00909e),child: Text('T',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white),),)),
                            Text(
                              'Tool 4',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, right: 8.0),
                    child: Card(
                      elevation:3,
                      child: Container(
                        width: 130.0,
                        color: Colors.grey[100],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Card( elevation: 5,shape: CircleBorder(), child: CircleAvatar(maxRadius:35,backgroundColor: Color(0xff00909e),child: Text('T',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white),),)),
                            Text(
                              'Tool 5',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
