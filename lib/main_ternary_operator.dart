/* Ternary  operator */
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isRed = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ternary Operator',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ternary Operator"),
          centerTitle: true,
        ),
        body: GestureDetector(
          child: Container(
            //三項演算子で省略記述
            color: _isRed ? Colors.red : Colors.blue,
          ),
          onTap: () {
            setState(() {
              _isRed = !_isRed;
            });
          },
        ),
      ),
    );
  }
}
