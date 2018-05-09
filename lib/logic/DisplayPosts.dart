import 'package:flutter/material.dart';
import 'package:flutter_eat_social/model/post_model.dart';
import 'package:flutter_eat_social/logic/display_icon.dart';

class DisplayPosts extends StatefulWidget {
  @override
  _DisplayPostsState createState() => new _DisplayPostsState();
}

class _DisplayPostsState extends State<DisplayPosts> {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, i)=> new Column(
        children: <Widget>[

      new Container(
      padding: const EdgeInsets.all(10.0),
      child: new Row(
        children: [
          new Expanded(
            child: new Card(
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  new Container(
                    color: Colors.grey.shade200,
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(dummyData[i].post_msg,  style: new TextStyle(fontWeight: FontWeight.normal)),
                    ),
                  new Container(
                    color: Colors.grey.shade200,
                    padding: const EdgeInsets.only(right: 5.0, bottom: 5.0),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        new display_icon(dummyData[i].post_status),
                      ],
                    ),
                  ),
                  new Container(
                    padding: const EdgeInsets.all(10.0),
                    child: new Row(
                      children: <Widget>[
                        new Expanded(
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                new CircleAvatar(
                                  foregroundColor: Theme.of(context).primaryColor,
                                  backgroundColor: Colors.grey,
                                  backgroundImage: new NetworkImage(dummyData[i].post_party_url_1),
                                ),
                                new Container(
                                  padding: const EdgeInsets.only(right: 5.0),
                                ),
                                new CircleAvatar(
                                  foregroundColor: Theme.of(context).primaryColor,
                                  backgroundColor: Colors.grey,
                                  backgroundImage: new NetworkImage(dummyData[i].post_party_url_2),
                                ),
                                new Container(
                                  padding: const EdgeInsets.only(right: 5.0),
                                ),
                                new CircleAvatar(
                                  foregroundColor: Theme.of(context).primaryColor,
                                  backgroundColor: Colors.grey,
                                  backgroundImage: new NetworkImage(dummyData[i].post_party_url_3),
                                ),
                              ],

                            )
                        ),
                        new Icon(Icons.more_horiz),
                      ],
                    ),
                  ),

                ],
              ),
            ),



          ),
        ],
      ),
    )

        ],
      ),
    );
  }
}