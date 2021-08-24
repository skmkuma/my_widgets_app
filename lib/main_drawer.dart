/* Drawer */
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DrawerHeader practice',
      home: DrawPage(),
    );
  }
}

class DrawPage extends StatefulWidget {
  @override
  _DrawPageState createState() => _DrawPageState();
}

class _DrawPageState extends State<DrawPage> {
  final List listTiles = <Widget>[
    ListTile(title: Text('item1')),
    ListTile(title: Text('item2')),
    ListTile(title: Text('item3')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer App")),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Container(
                child: DrawerHeader(
                  child: Text(
                    "Header",
                    style: TextStyle(fontSize: 25),
                  ),
                  decoration: BoxDecoration(color: Colors.blue),
                ),
                height: 120),
            Container(
              child: ListTile(
                title: Text("item1"),
                trailing: Icon(Icons.arrow_forward),
              ),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey),
                ),
              ),
            ),
            Container(
              child: ListTile(
                title: Text("item2"),
                trailing: Icon(Icons.arrow_forward),
              ),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey),
                ),
              ),
            ),
            Container(
              child: ListTile(
                title: Text("item3"),
                trailing: Icon(Icons.arrow_forward),
              ),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
