import 'package:flutter/material.dart';
import 'package:flutter_eat_social/logic/DisplayPosts.dart';

class EatSocialHome extends StatefulWidget {
  @override
  _EatSocialHomeState createState() => new _EatSocialHomeState();
}

class _EatSocialHomeState extends State<EatSocialHome>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body: new Column(
        children: <Widget>[
          new Expanded(child: new DisplayPosts()),
          new Container(
            padding: const EdgeInsets.all(10.0),
            //color: Colors.blueGrey,
            child: new Row(
              children: <Widget>[
                new Image.asset('images/logo.png', width: 42.0, height: 42.0,),
                new Padding(padding: const EdgeInsets.only(left: 5.0),),
                new Image.asset('images/posts_icon.png', width: 42.0, height: 42.0,),
                new Padding(padding: const EdgeInsets.only(left: 5.0),),
                new Image.asset('images/other_icon.png', width: 42.0, height: 42.0,),
                new Padding(padding: const EdgeInsets.only(left: 5.0),),
                new Image.asset('images/other_icon.png', width: 42.0, height: 42.0,)
            ],
          ),
          )

        ],

        ),


/*      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.blue,
        items: [
          new BottomNavigationBarItem(icon: new Icon(Icons.message), title: new Text("Posts"), backgroundColor: Colors.blue),
          new BottomNavigationBarItem(icon: new Icon(Icons.event), title: new Text("Event")),
          new BottomNavigationBarItem(icon: new Icon(Icons.people), title: new Text("Chat"))
      ]),*/
    );
  }
}