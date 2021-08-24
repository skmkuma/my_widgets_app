// conrtainer

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Container App",
      home: Scaffold(
        body: Center(
          child: Container(
            color: Colors.blue, //containerの色
            width: 300.0, //containerの幅
            height: 300.0, //containerの高さ
            alignment: Alignment.center, //テキストの位置
            child: Text(
              "Container", // テキスト名
              style: TextStyle(
                color: Colors.pink, //テキストの色
                backgroundColor: Colors.yellow, //背景色
                fontSize: 40, //文字の大きさ
                fontWeight: FontWeight.bold, //文字の太さ
              ),
            ), // Text
          ),
        ),
      ),
    );
  }
}
