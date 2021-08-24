/* Icon variation  */

import 'package:flutter/material.dart';

void main() => runApp(MyIconApp());

class MyIconApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Icon practice App",
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Icon variation App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                'IconBtton',
                style: TextStyle(
                  fontSize: 30,
                  decoration: TextDecoration.underline,
                ),
              ),
              padding: EdgeInsets.only(bottom: 10),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  color: Colors.blue,
                  onPressed: () {},
                  icon: Icon(Icons.thumb_up),
                  iconSize: 50,
                ),
                IconButton(
                  color: Colors.pink,
                  onPressed: () {},
                  icon: Icon(Icons.favorite),
                  iconSize: 50,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.flight),
                  iconSize: 60,
                ),
              ],
            ),
            Container(
              child: Text(
                'Icon & Text Button',
                style: TextStyle(
                  fontSize: 30,
                  decoration: TextDecoration.underline,
                ),
              ),
              padding: EdgeInsets.only(top: 20, bottom: 30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.thumb_up),
                    label: Text(
                      'Good!',
                      style: TextStyle(fontSize: 20),
                    )),
                OutlinedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.pink,
                    ),
                    label: Text(
                      'Like!',
                      style: TextStyle(fontSize: 20, color: Colors.pink),
                    )),
                ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.flight),
                    label: Text(
                      'Flight!',
                      style: TextStyle(fontSize: 20),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
