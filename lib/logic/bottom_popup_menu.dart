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
        onPressed: (){_showAlert();},
        ),
    );
  }
}




