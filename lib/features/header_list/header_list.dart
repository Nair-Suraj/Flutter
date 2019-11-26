import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeaderList extends StatelessWidget {

  final List<ListItem> items;

  HeaderList(this.items);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {

          final item = items[index];
          Icon iconData=Icon(Icons.update);
          CircleAvatar leadingIcon;
          if(index==3||index==4){
            iconData=Icon(Icons.check);
          }

          if (item is HeadingItem) {
            return ListTile(
              title: Text(
                item.heading,
                style: Theme.of(context).textTheme.headline,
              ),
            );
          } else if (item is MessageItem) {

            if(item.date==null){
                iconData= Icon(FontAwesomeIcons.readme,color: Colors.black54,);
            }

            if( item.body.contains("Tool")){
              leadingIcon= CircleAvatar(backgroundColor: Color(0xff64b2cd),child: Text('T',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white),),);
            }else if(item.date==null){
              leadingIcon= CircleAvatar(backgroundColor: Color(0xff3c70a4),child: Text('C',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold,color: Colors.white),),);
            }else{
              leadingIcon=null;
            }


            return Ink(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: leadingIcon,
                    trailing: iconData,
                    title: Text(item.title),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(item.body),
                        Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(item.date!=null ? item.date: '',style: TextStyle(fontSize: 10),),
                        ),
                      ],
                    ),
                    onTap: (){},
                  ),
                  Divider(thickness: 1,)
                ],
              ),
            );
          }
          return Text('NULL');
        },
      ),
    );
  }
}

abstract class ListItem {}

// A ListItem that contains data to display a heading.
class HeadingItem implements ListItem {
  final String heading;

  HeadingItem(this.heading);
}

// A ListItem that contains data to display a message.
class MessageItem implements ListItem {
  final String title;
  final String body;
  final String date;

  MessageItem(this.title, this.body,{this.date});
}
