/* Container(Row,Column) */

import 'package:flutter/material.dart';
import 'package:my_widgets_app/main_src.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Container App 2",
      home: Container(
        child: Row(
          // 行
          mainAxisAlignment:
              MainAxisAlignment.center, // 中央に配置（他にstart、end、spaceAroundなど）
          children: <Widget>[
            Column(
              // 列
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.blue,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.yellow,
                  width: 100,
                  height: 100,
                ),
              ],
            ),
            Column(
              // 列
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Colors.green,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.purple,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.orange,
                  width: 100,
                  height: 100,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
