import 'package:flutter/material.dart';

class display_icon extends StatelessWidget {
  String post_status;

  display_icon(String paramval){
    this.post_status=paramval;
  }

  @override
  Widget build(BuildContext context) {
    if(post_status=="AD"){
      return new Container(
            child: new Image.asset('images/AD.png'),
      );
    }
    else if(post_status=="PLAN"){
      return new Container(
        child: new Image.asset('images/Plan.png'),
      );
    }
    else{
      return new Container(
        child: new Image.asset('images/LIVE.png'),
      );
    }


  }
}
