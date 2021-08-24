/* Slider */

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slide Practice App',
      home: Scaffold(
        appBar: AppBar(title: Text('Slide Value App')),
        body: Center(child: SlideForm()),
      ),
    );
  }
}

class SlideForm extends StatefulWidget {
  @override
  _SlideFormState createState() => _SlideFormState();
}

class _SlideFormState extends State<SlideForm> {
  double _value = 0.0;

  void _changeValue(double e) => setState(() => _value = e);

  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '値: ${_value}',
            style: TextStyle(fontSize: 30),
          ),
          Slider(
            min: 0,
            max: 100,
            divisions: 10,
            label: '${_value}',
            value: _value,
            onChanged: _changeValue,
            activeColor: Colors.orange,
            inactiveColor: Colors.green,
          ),
        ],
      ),
    );
  }
}
