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
      backgroundColor: Colors.grey[100],
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
                Navigator.push(context, MaterialPageRoute(builder:(context)=>ContentView()));
              },
              child: Container(
                color: Colors.grey,
                height: 150,
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
              height: 150,
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
              height: 150,
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
              height: 150,
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
