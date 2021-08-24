/* Stack */

import 'package:flutter/material.dart';
import 'package:my_widgets_app/main_src.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stack practice App"),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              height: 300.0,
              width: 300.0,
              color: Colors.pink,
            ),
            Container(
              height: 200.0,
              width: 200.0,
              color: Colors.green,
            ),
            Container(
              height: 100.0,
              width: 100.0,
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
