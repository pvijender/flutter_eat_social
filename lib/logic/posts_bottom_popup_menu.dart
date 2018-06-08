import 'package:flutter/material.dart';

class PostsBottomPopupMenu extends StatefulWidget {
  @override
  _PostsBottomPopupMenuState createState() => new _PostsBottomPopupMenuState();
}

class _PostsBottomPopupMenuState extends State<PostsBottomPopupMenu> {
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
        icon: new Icon(Icons.more_vert),
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
                        title: const Text('Help Center'),
                      ),
                      const ListTile(
                        leading: const Icon(Icons.people),
                        title: const Text('User Guide'),
                      ),
                      const ListTile(
                        leading: const Icon(Icons.feedback),
                        title: const Text('Feedback'),
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




