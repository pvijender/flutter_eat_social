import 'package:flutter/material.dart';

class CustomizedCircleAvatar extends StatelessWidget {

  String image_url;

  CustomizedCircleAvatar(String paramval){
    /*if(paramval.length<=0 || paramval.isEmpty){
      image_url="";
    }else{
      image_url=paramval;
    }*/
    //image_url=paramval;
    //debugPrint(image_url);
    if(paramval!=null){
      image_url=paramval;
    }else{
      image_url="https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260";
    }

  }


  @override
  Widget build(BuildContext context) {
    return new CircleAvatar(
        backgroundImage: new NetworkImage(image_url),
        //backgroundImage: new NetworkImage(snapshot.data.documents[i]['event_member_1']),
        radius: 15.0,
    );
  }
}
