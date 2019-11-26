import 'package:flutter/material.dart';

class DraggableNotes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: DraggableScrollableSheet(
          initialChildSize: 0.085,
          minChildSize: 0.085,
          maxChildSize: 1,
          builder: (BuildContext context, ScrollController scrollController) {
            return Card(
              elevation: 5,
              color: Colors.lightBlueAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Container(
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: 25,
                  itemBuilder: (BuildContext context, int index) {
                    if (index == 0) {
                      return SizedBox(height:40,child: Icon(Icons.file_upload));
                    }
                    return ListTile(title: Text('Item $index'));
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
