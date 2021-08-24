/* TextButton, OutlinedButton, ElevatedButton */

import 'package:flutter/material.dart';
import 'package:my_widgets_app/main_src.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button practice',
      theme: ThemeData.dark(),
      // theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                'TextButton',
                style: TextStyle(
                    fontSize: 30, decoration: TextDecoration.underline),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TextButton(
                  onPressed: null,
                  child: Text(
                    'Disabled',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Enabled',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Enabled',
                    style: TextStyle(fontSize: 20),
                  ),
                  style: TextButton.styleFrom(primary: Colors.red),
                ),
              ],
            ),
            Container(
              child: Text(
                'OutlinedButton',
                style: TextStyle(
                    fontSize: 30, decoration: TextDecoration.underline),
              ),
              padding: EdgeInsets.only(top: 32, bottom: 10),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                OutlinedButton(
                  onPressed: null,
                  child: Text(
                    'Disabled',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'Enabled',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    'Disabled',
                    style: TextStyle(fontSize: 20, color: Colors.red),
                  ),
                ),
              ],
            ),
            Container(
              child: Text(
                'ElevatedButton',
                style: TextStyle(
                    fontSize: 30, decoration: TextDecoration.underline),
              ),
              padding: EdgeInsets.only(top: 32, bottom: 10),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: null,
                  child: Text(
                    'Disabled',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Enabled',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Enabled',
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    elevation: 50, // ボタンの影の深さ
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
