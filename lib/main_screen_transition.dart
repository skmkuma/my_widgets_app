/* Screen transition */

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'screen transition',
      home: MainPage(),
      // routesで遷移元と遷移先のurlを設定する
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => MainPage(),
        '/subpage': (BuildContext context) => SubPage(),
      },
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Main Page')),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Main',
                style: TextStyle(fontSize: 30),
              ),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              ElevatedButton(
                //.MainPageの画面にSubPageの画面を上乗せする
                onPressed: () => Navigator.of(context).pushNamed("/subpage"),
                child: Text(
                  'Subページへ',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Sub Page',
        style: TextStyle(fontSize: 20),
      )),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Sub',
                style: TextStyle(fontSize: 30),
              ),
              Padding(padding: EdgeInsets.only(bottom: 10)),
              ElevatedButton(
                //現在の画面(SubPage)を取り除く
                onPressed: () => Navigator.of(context).pop(),
                child: Text(
                  'Mainページへ',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
