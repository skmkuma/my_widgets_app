/* button_increment */
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'button_increment',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Button Increment App'),
        ),
        body: Center(
          child: PlusApp(),
        ),
      ),
    );
  }
}

class PlusApp extends StatefulWidget {
  @override
  _PlusAppState createState() => _PlusAppState();
}

class _PlusAppState extends State<PlusApp> {
  int _count = 0;

  void _handlePressed() {
    // 状態を保持する変数を変更する処理は、setState内に記述
    setState(() {
      _count++;
    });
  }

  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "$_count",
            style: TextStyle(
              color: Colors.pinkAccent,
              fontSize: 80.0,
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          ElevatedButton(
            onPressed: _handlePressed,
            child: Text(
              "Good!",
              style: TextStyle(
                fontSize: 40.0,
              ),
            ),
            style: ElevatedButton.styleFrom(
                primary: Colors.pink,
                padding: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
          )
        ],
      ),
    );
  }
}
