import 'package:flutter/material.dart';
import 'package:flutter_eat_social/model/post_model.dart';
import 'package:flutter_eat_social/logic/display_icon.dart';
import 'package:flutter_eat_social/logic/bottom_popup_menu.dart';

class DisplayPosts extends StatefulWidget {
  @override
  _DisplayPostsState createState() => new _DisplayPostsState();
}

class _DisplayPostsState extends State<DisplayPosts> {


  void _showAlert() {
    AlertDialog alertDialog = new AlertDialog(
        content: new Text("Clicking here will launch the bottom menu bar")
    );

    //showDialog(context: context, child: alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, i)=> new GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            new MaterialPageRoute(builder: (context) => new SecondScreen()),
          );
        },
        child: new Column(
          children: <Widget>[

            new Container(
              padding: const EdgeInsets.all(5.0),
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
                            child: new Text(dummyData[i].post_msg,  style: new TextStyle(fontWeight: FontWeight.normal, fontSize: 16.0)),
                          ),
                          new Container(
                            color: Colors.grey.shade200,
                            padding: const EdgeInsets.only(right: 5.0, bottom: 5.0),
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                new display_icon(dummyData[i].post_status),
                                //new ChoiceChip(label: null, selected: null)
                                //new ChoiceChip(label: new Text('Light Blue')),
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
                                          backgroundImage: new NetworkImage(dummyData[i].post_party_url_1),
                                          radius: 16.0,
                                        ),
                                        new Container(
                                          padding: const EdgeInsets.only(right: 5.0),
                                        ),
                                        new CircleAvatar(
                                          radius: 16.0,
                                          backgroundImage: new NetworkImage(dummyData[i].post_party_url_2),
                                        ),
                                        new Container(
                                          padding: const EdgeInsets.only(right: 5.0),
                                        ),
                                        new CircleAvatar(
                                          radius: 16.0,
                                          backgroundImage: new NetworkImage(dummyData[i].post_party_url_3),
                                        ),
                                      ],

                                    )
                                ),
                                new BottomPopupMenu(),
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

      ),



    );
  }
}

class SecondScreen extends StatelessWidget {

  void _tapDown(TapDownDetails details) {
    debugPrint("tap Down");
  }

  void _tapUp(TapUpDetails details) {
    debugPrint("tap Up");
  }

  void _panDown(DragDownDetails details) {
    debugPrint("Drag Down");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new GestureDetector(
        //onTapDown: _tapDown,
        //onTapUp: _tapUp,
        onPanDown: _panDown,
        //onPanDown: ()=>debugPrint("welcome"),
        child: new Container(
          margin: const EdgeInsets.only(top: 20.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[

                new Expanded(
                    child: new Container(
                      decoration: const BoxDecoration(
                          image: const DecorationImage(
                              image: const AssetImage("images/coffee.png"),
                              fit: BoxFit.fill
                          )
                      ),
                      //child: new Image.asset('images/coffee.png'),
                    ),


                ),
                new Container(
                    margin: const EdgeInsets.only(top:20.0),
                    child: new Text('Coffee in ten minutes3',
                    textAlign: TextAlign.center,
                    style: new TextStyle(fontSize: 20.0)),
                ),
                new Container(
                    margin: const EdgeInsets.all(20.0),
                    child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Icon(Icons.people),
                      new Icon(Icons.watch_later),
                      new Icon(Icons.location_on),
                      new Icon(Icons.info),
                      new Icon(Icons.message),
                    ],
                  )
                ),
                new Divider(height: 10.0,color: Colors.blue,),
                new Container(
                  //color: Colors.blueGrey,
                  padding: const EdgeInsets.all(10.0),
                  child: new Row(
                    children: <Widget>[
                      new Image.asset('images/logo.png', width: 42.0, height: 42.0,),
                      new Padding(padding: const EdgeInsets.only(left: 5.0),),
                      new Image.asset('images/other_icon.png', width: 42.0, height: 42.0,),
                      new Padding(padding: const EdgeInsets.only(left: 5.0),),
                      new Image.asset('images/plan_icon.png', width: 42.0, height: 42.0,),
                      new Padding(padding: const EdgeInsets.only(left: 5.0),),
                      new Image.asset('images/other_icon.png', width: 42.0, height: 42.0,)
                    ],
                  ),
                ),

            ],
          )
        /*child: new RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: new Text('Go back!'),
        ),*/
      ),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {

  void _tapDown(TapDownDetails details) {
    debugPrint("tap Down");
  }

  void _tapUp(TapUpDetails details) {
    debugPrint("tap Up");
  }

  void _panDown(DragDownDetails details) {
    debugPrint("Drag Down");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            pinned: true,
            expandedHeight: 600.0,
              flexibleSpace: const FlexibleSpaceBar(
              title: const Text('Demo1'),
            ),
          ),


        ],
   /*     slivers: <Widget>[
          const SliverAppBar(
            pinned: true,
            expandedHeight: 300.0,
            flexibleSpace: const FlexibleSpaceBar(
              title: const Text('Demo'),
            ),
          ),
        ],*/
    ),
    );
  }
}



