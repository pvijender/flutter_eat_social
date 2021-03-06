import 'package:flutter/material.dart';

class BottomPopupMenu extends StatefulWidget {
  @override
  _BottomPopupMenuState createState() => new _BottomPopupMenuState();
}

class _BottomPopupMenuState extends State<BottomPopupMenu> {
  int _count=0;

  _toggleFavorite() {
    /*setState(() {
      if(_count==0){
        _count=1;
      }
    });*/

    return new AlertDialog(
        title: new Text('Rewind and remember'),
    );
  }

  void _showAlert(){
    AlertDialog alertDialog = new AlertDialog(
      content: new Text("Clicking here will launch the bottom menu bar")
    );

    showDialog(context: context, child: alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new IconButton(
        icon: new Icon(Icons.more_horiz),
        onPressed: () {
          /*showModalBottomSheet(context: context,
              builder: (BuildContext context) => const _DemoDrawer());*/
          showModalBottomSheet<void>(context: context, builder: (BuildContext context) {
            return new Container(
              height: 200.0,
                child: new Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: new Column(
                      children: <Widget>[
                        const ListTile(
                          leading: const Icon(Icons.event),
                          title: const Text('Request to Join'),
                        ),
                        const ListTile(
                          leading: const Icon(Icons.event),
                          title: const Text('Send a message'),
                        ),
                        const ListTile(
                          leading: const Icon(Icons.event),
                          title: const Text('Report Abuse'),
                        ),
                      ],
                    ),


                )
            );
          });
        },
      ),
    );
  }
}

// A drawer that pops up from the bottom of the screen.
/*
class _DemoDrawer extends StatelessWidget {
  const _DemoDrawer();

  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new Column(
        children: const <Widget>[
          const ListTile(
            leading: const Icon(Icons.search),
            title: const Text('Search'),
          ),
          const ListTile(
            leading: const Icon(Icons.threed_rotation),
            title: const Text('3D'),
          ),
        ],
      ),
    );
  }
}
*/




