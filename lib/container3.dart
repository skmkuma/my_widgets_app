import 'package:flutter/material.dart';
import 'package:my_widgets_app/main_src.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "practice",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Container practice App"),
        ),
        body: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.red,
                    width: 100.0,
                    height: 100.0,
                  ),
                  Container(
                    color: Colors.green,
                    width: 100.0,
                    height: 100.0,
                  ),
                  Container(
                    color: Colors.blue,
                    width: 100.0,
                    height: 100.0,
                  ),
                  Container(
                    color: Colors.yellow,
                    width: 100.0,
                    height: 100.0,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.red,
                    width: 100.0,
                    height: 100.0,
                  ),
                  Container(
                    color: Colors.green,
                    width: 100.0,
                    height: 100.0,
                  ),
                  Container(
                    color: Colors.blue,
                    width: 100.0,
                    height: 100.0,
                  ),
                  Container(
                    color: Colors.yellow,
                    width: 100.0,
                    height: 100.0,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    color: Colors.red,
                    width: 100.0,
                    height: 100.0,
                  ),
                  Container(
                    color: Colors.green,
                    width: 100.0,
                    height: 100.0,
                  ),
                  Container(
                    color: Colors.blue,
                    width: 100.0,
                    height: 100.0,
                  ),
                  Container(
                    color: Colors.yellow,
                    width: 100.0,
                    height: 100.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
