import 'package:flutter/material.dart';
import 'package:flutter_eat_social/model/post_model.dart';
import 'package:flutter_eat_social/logic/display_icon.dart';
import 'package:flutter_eat_social/logic/bottom_popup_menu.dart';
import 'package:flutter_eat_social/logic/contacts.dart';

class DisplayPosts extends StatefulWidget {
  @override
  _DisplayPostsState createState() => new _DisplayPostsState();
}

class _DisplayPostsState extends State<DisplayPosts> {


  void _showAlert() {
    AlertDialog alertDialog = new AlertDialog(
        content: new Text("Clicking here will launch the bottom menu bar")
    );

    showDialog(context: context, child: alertDialog);
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

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => new _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  void _showAlert() {
    AlertDialog alertDialog = new AlertDialog(
        content: new Text("Clicking here will launch the bottom menu bar")
    );

    showDialog(context: context, child: alertDialog);
  }


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
            //margin: const EdgeInsets.only(top: 20.0),

            child: new Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                  new Expanded(
                      child:
                      new ListView(
                          children: <Widget>[
                          new Container(
                            color: Colors.green,
                            child: new Image(image: AssetImage("images/coffee_temp.PNG")),

                            ),
                          new Container(
                            margin: const EdgeInsets.all(20.0),
                            child: new Row(
                              children: <Widget>[
                                new Text('Coffee in ten minutes7',
                                  style: new TextStyle(fontSize: 20.0), textAlign: TextAlign.left,),
                              ],
                            ),

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
                                  new InkWell(onTap: _showAlert,
                                    child: new Image.asset('images/join_icon.png'),
                                  ),
                                ],
                              )
                          ),
                          new Divider(height: 10.0,color: Colors.blue,),

                          new ListTile(
                            leading: new Icon(Icons.watch_later),
                            title: new Row(
                              children: <Widget>[
                                new Container(
                                child:new Image.asset('images/coffee_icon.PNG', height: 40.0,),
                                ),
                                new Container(
                                  margin: EdgeInsets.all(10.0),
                                  child:new Text("Coffee"),
                                ),

                              ],
                            ),
                            //Image.asset('images/join_icon.png'),
                          ),
                          new ListTile(
                            leading: new Icon(Icons.people),
                              title: new Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                new Chip(
                                  avatar: new CircleAvatar(
                                    backgroundColor: Colors.grey.shade300,
                                    child: new CircleAvatar(
                                      backgroundImage: new NetworkImage("https://images.pexels.com/photos/324658/pexels-photo-324658.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                                      radius: 16.0,
                                    ),
                                  ),
                                  label: new Text('Arnie Debby'),
                                ),
                                new Padding(
                                  padding: new EdgeInsets.all(10.0),
                                ),
                                new Chip(
                                  avatar: new CircleAvatar(
                                    backgroundColor: Colors.grey.shade300,
                                    child: new CircleAvatar(
                                    backgroundImage: new NetworkImage("https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                                    radius: 16.0,
                                    ),
                                  ),
                                  label: new Text('John Cairns'),
                                ),
                              ],
                            ),
                          ),
                          new ListTile(
                            leading: new Icon(Icons.watch_later),
                            title: new Row(
                              children: <Widget>[
                                new Expanded(
                                  child:new Container(
                                    child:new Text("Today at 1:20 PM"),
                                  ),
                                ),
                                new Chip(
                                  backgroundColor: Colors.blue,
                                  label: new Text('2 hr 20 min 30 sec', textAlign: TextAlign.center, style: new TextStyle(color: Colors.white),),
                                ),

                              ],
                            ),
                            //Image.asset('images/join_icon.png'),
                          ),
                          new ListTile(
                            leading: new Icon(Icons.location_on),
                            title: new Center(
                                  child:new Chip(
                                    shape: new RoundedRectangleBorder(
                                      side: const BorderSide(width: 0.66, style: BorderStyle.solid, color: Colors.grey),
                                      borderRadius: new BorderRadius.circular(10.0),
                                    ),
                                    backgroundColor: Colors.black87,
                                    label: new Text('Suggest Places', textAlign: TextAlign.center, style: new TextStyle(color: Colors.white),),
                                  ),
                                ),

                            //Image.asset('images/join_icon.png'),
                          ),
                          new ListTile(
                            leading: new Icon(Icons.location_on),
                            title: new Row(
                              children: <Widget>[
                                new Center(
                                  child:new Chip(

                                    label: new Text('Suggest Places1'),
                                  ),
                                ),

                              ],
                            ),
                            //Image.asset('images/join_icon.png'),
                          ),

                      ],
                    ),


                   /*   new Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                              image: const DecorationImage(
                                  image: const AssetImage("images/coffee.PNG"),
                                  fit: BoxFit.fill
                              )
                          ),
                          //child: new Image.asset('images/coffee.png'),
                        ),
                      ),*/

                     /* new Container(
                        margin: const EdgeInsets.all(20.0),
                        child: new Row(
                          children: <Widget>[
                            new Text('Coffee in ten minutes7',
                              style: new TextStyle(fontSize: 20.0), textAlign: TextAlign.left,),
                          ],
                        ),

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
                              new InkWell(onTap: _showAlert,
                                child: new Image.asset('images/join_icon.png'),
                              ),
                            ],
                          )
                      ),
                      new Divider(height: 10.0,color: Colors.blue,),*/

                  ),
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
                      new Image.asset('images/plan_icon.png', width: 42.0, height: 42.0,)
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

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ContactsDemo(),
    );
  }
}



