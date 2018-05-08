import 'package:flutter/material.dart';
import 'package:flutter_eat_social/home_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'WhatsApp',
      /*theme: new ThemeData(
        primaryColor: new Color(Colors.green),
        accentColor: new Color(Colors.yellow),
      )*/
      debugShowCheckedModeBanner: false,
      home: new EatSocialHome(),
    );
  }
}