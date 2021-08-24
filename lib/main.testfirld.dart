/* TextField */

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextField App',
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(title: Text("TextField App")),
        body: Center(
          child: MyTextForm(),
        ),
      ),
    );
  }
}

class MyTextForm extends StatefulWidget {
  @override
  _MyTextFormState createState() => _MyTextFormState();
}

class _MyTextFormState extends State<MyTextForm> {
  String _text = '';

  void _handleText(String input) {
    setState(() {
      _text = input;
    });
  }

  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "$_text",
            style: TextStyle(
              color: Colors.pinkAccent,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          TextField(
            onChanged: _handleText,
            style: TextStyle(color: Colors.orange),
            decoration: InputDecoration(hintText: 'Enter your name'),
            autofocus: true, //画面を開いた瞬間にTextFieldにフォーカスし、キーボードが開く
          )
        ],
      ),
    );
  }
}
