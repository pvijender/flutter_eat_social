import 'package:flutter/material.dart';
import 'package:flutter_eat_social/logic/DisplayPosts.dart';
import 'package:flutter_eat_social/logic/posts_bottom_popup_menu.dart';

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
      backgroundColor: Colors.white,

      body: new Column(
        children: <Widget>[
          new Expanded(
              child: new Stack(
                alignment: const Alignment(1.0, 1.0),
                children: <Widget>[
                  new DisplayPosts(),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      new Expanded(
                        //margin: EdgeInsets.only(right:10.0, bottom: 10.0),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Chip(
                              backgroundColor: Colors.grey.shade800,
                              label: new Text("FILTER", textAlign: TextAlign.center, style: new TextStyle(color: Colors.white, fontSize: 15.0)),
                              avatar: new CircleAvatar(
                                backgroundColor: Colors.grey.shade300,
                                child: new Icon(Icons.filter_list, color: Colors.black,)
                              ),
                            )
                          ],
                        )
                      ),
                      new Container(
                        margin: EdgeInsets.only(right:10.0, bottom: 10.0),
                        child: new FloatingActionButton(
                          //backgroundColor: Colors.white,

/*                      shape: new RoundedRectangleBorder(
                        side: const BorderSide(width: 0.66, style: BorderStyle.solid, color: Colors.grey),

                        borderRadius: new BorderRadius.circular(5.0),
                      ),*/
                          backgroundColor: Colors.grey.shade800,
                          child: new Icon(Icons.add_circle),
                          onPressed: null,),
                      ),
                    ],
                  ),


                ],
                ),
              ),

          new Container(
              //color: Colors.grey.shade100,
              //elevation: 0.4,
              margin: EdgeInsets.only(left: 0.0, right: 0.0, bottom: 0.0),
              decoration: BoxDecoration(
                boxShadow: [
                  new BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 0.3,
                    spreadRadius: 0.6,
                    //offset: Offset(1.0, 1.0),
                  )
                ],
/*                border: const Border(
                  top: const BorderSide(width: 0.4, color: Colors.grey),
                ),*/
              ),
              //padding: EdgeInsets.all(5.0),
              //padding: const EdgeInsets.all(10.0),
              //color: Colors.blueGrey,
              child: new Container(
                  margin: EdgeInsets.all(0.0),
                 padding: EdgeInsets.only(left: 10.0, top: 5.0, right: 5.0, bottom: 5.0),
                 color: Colors.white,
                child:  Row(
                  children: <Widget>[
                    new Expanded(
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
                    ),
                    new Padding(
                        padding: const EdgeInsets.only(right:10.0),
                        //child: new Icon(Icons.more_vert),
                        child: new PostsBottomPopupMenu(),
                    ),
                  ],
                ),
              ),


          ),



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
    //new FloatingActionButton(onPressed: null),
    );
  }
}