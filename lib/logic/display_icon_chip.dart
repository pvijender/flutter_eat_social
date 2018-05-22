import 'package:flutter/material.dart';

class display_icon_chip extends StatelessWidget {
  String post_status;

  display_icon_chip(String paramval){
    this.post_status=paramval;
  }


  @override
  Widget build(BuildContext context) {
    if(post_status=="AD"){
      return new Chip(
        backgroundColor: Colors.yellowAccent.shade400,
        label: new Text("  AD    ", textAlign: TextAlign.center, style: new TextStyle(color: Colors.black, fontSize: 12.0)),
      );
    }
    else if(post_status=="PLAN"){
      return new Chip(
        backgroundColor: Colors.blue.shade300,
        label: new Text(" PLAN ", textAlign: TextAlign.center, style: new TextStyle(color: Colors.black, fontSize: 12.0)),
      );
    }
    else{
      return new Chip(
        backgroundColor: Colors.green.shade300,
        label: new Text(" LIVE ", textAlign: TextAlign.center, style: new TextStyle(color: Colors.black, fontSize: 12.0)),
      );
    }


  }
}
