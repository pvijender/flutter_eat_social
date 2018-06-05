import 'package:flutter/material.dart';

class display_icon_chip extends StatelessWidget {
  String post_status;

  display_icon_chip(String paramval){
    this.post_status=paramval;
  }

  @override
  Widget build(BuildContext context) {
    if(post_status=="AD"){
      return new Image(image: AssetImage("images/ad_icon.png"));
    }
    else if(post_status=="PLAN"){
      /*return new Chip(
        backgroundColor: Colors.blue.shade300,
        label: new Text(" PLAN ", textAlign: TextAlign.center, style: new TextStyle(color: Colors.black, fontSize: 12.0)),
      );*/
      return new Image(image: AssetImage("images/planned_icon.png"));
    }
    else if(post_status=="LIVE"){
      return new Image(image: AssetImage("images/live_icon.png"));
    }
    else{
      return new Image(image: AssetImage(""));
    }


  }
}
