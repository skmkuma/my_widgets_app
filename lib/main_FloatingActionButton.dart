/* FloatingActionButton */

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FloatingActionButton',
      theme: ThemeData.light(),
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
