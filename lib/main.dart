import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'intro_slider_example.dart';

void main() => runApp(MySliderApp());

class MySliderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightGreenAccent[100],
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[800],
          title: Center(child: Text('Gin Cocktail by Dz')),
        ),
        body: IntroSliderExample(),
      ),
    );
  }
}
