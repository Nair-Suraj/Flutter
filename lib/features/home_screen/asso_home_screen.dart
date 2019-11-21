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
        padding: const EdgeInsets.all(16.0),
        child: StaggeredGridView.count(
          crossAxisCount: 4,
          crossAxisSpacing: 10.0,
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
          ],
          children: <Widget>[
            InkWell(
              onTap: (){
                Navigator.of(context).push(PageRouteBuilder(opaque: false, pageBuilder: (BuildContext context, _, __) => ContentView()));
              },
              child: Container(
                color: Colors.grey,
                height: 120,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      'Most used chapter 1',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.grey,
              height: 120,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'Most used chapter 2',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.grey,
              height: 120,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'Most used tool 1',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.grey,
              height: 120,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'Most used tool 2',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
              ),
            ),
            CarouselSlider(
              height: 90.0,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 2),
              items: [1,2,3,].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                            color: Colors.grey[300]
                        ),
                        child: Center(child: Text('Sponsor $i', style: TextStyle(fontSize: 16.0),))
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
                    child: Container(
                      width: 160.0,
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          'Guideline 1',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, right: 8.0),
                    child: Container(
                      width: 160.0,
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'Guideline 2',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, right: 8.0),
                    child: Container(
                      width: 160.0,
                      color: Colors.green,
                      child: Center(
                        child: Text(
                          'Guideline 3',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, right: 8.0),
                    child: Container(
                      width: 160.0,
                      color: Colors.yellow,
                      child: Center(
                        child: Text(
                          'Guideline 4',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, right: 8.0),
                    child: Container(
                      width: 160.0,
                      color: Colors.orange,
                      child: Center(
                        child: Text(
                          'Guideline 5',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
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
                    child: Container(
                      width: 160.0,
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          'CDS Tool 1',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, right: 8.0),
                    child: Container(
                      width: 160.0,
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'CDS Tool 2',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, right: 8.0),
                    child: Container(
                      width: 160.0,
                      color: Colors.green,
                      child: Center(
                        child: Text(
                          'CDS Tool 3',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, right: 8.0),
                    child: Container(
                      width: 160.0,
                      color: Colors.yellow,
                      child: Center(
                        child: Text(
                          'CDS Tool 4',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, right: 8.0),
                    child: Container(
                      width: 160.0,
                      color: Colors.orange,
                      child: Center(
                        child: Text(
                          'CDS Tool 5',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
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
                    child: Container(
                      width: 160.0,
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          'Tool 1',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, right: 8.0),
                    child: Container(
                      width: 160.0,
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'Tool 2',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, right: 8.0),
                    child: Container(
                      width: 160.0,
                      color: Colors.green,
                      child: Center(
                        child: Text(
                          'Tool 3',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, right: 8.0),
                    child: Container(
                      width: 160.0,
                      color: Colors.yellow,
                      child: Center(
                        child: Text(
                          'Tool 4',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8.0, right: 8.0),
                    child: Container(
                      width: 160.0,
                      color: Colors.orange,
                      child: Center(
                        child: Text(
                          'Tool 5',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
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
