/*  Switch Icon */
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swatch paractice',
      theme: ThemeData.light(),
      home: Scaffold(
          appBar: AppBar(
            title: Text('ChangeIcon Switch App'),
          ),
          body: Center(
            child: ChangeIcon(),
          )),
    );
  }
}

class ChangeIcon extends StatefulWidget {
  @override
  _ChangeIconState createState() => _ChangeIconState();
}

class _ChangeIconState extends State<ChangeIcon> {
  bool _active = false;

  void _changeIcon(bool e) => setState(() => _active = e);
  // void _changeIcon(bool e) {
  //   setState(() {
  //     _active = e;
  //   });
  // }

  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.favorite,
            color: _active ? Colors.red : Colors.grey,
            size: 80,
          ),
          Switch(
            value: _active,
            onChanged: _changeIcon,
            activeColor: Colors.orange,
            activeTrackColor: Colors.purple,
            inactiveThumbColor: Colors.blue,
            inactiveTrackColor: Colors.green,
          )
        ],
      ),
    );
  }
}
