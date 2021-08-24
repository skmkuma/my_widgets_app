/* Expanded */

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Expanded practice App",
      home: Container(
        child: Row(
          children: <Widget>[
            // 画面に拡張して表示
            Expanded(
              flex: 1, // 画面が占有されるように表示
              child: Container(
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.blue,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
