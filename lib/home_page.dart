import 'package:flutter/material.dart';
import 'package:flutter_eat_social/logic/DisplayPosts.dart';

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
      body: new DisplayPosts(),
    );
  }
}