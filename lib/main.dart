/* StatefulWidget */

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

// StatefulなWidgetのクラスはStatefulWidgetを継承
class RandomWords extends StatefulWidget {
  @override
  // createState():ビルド後に呼ばれるメソッドで必須(型はState)
  RandomWordsState createState() => RandomWordsState();
}

// 状態を管理するクラスは、Stateクラスを継承
class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    // WordPair:english_wordsパッケージのメソッド
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase, style: TextStyle(fontSize: 40));
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateful App',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateful sample App"),
        ),
        body: Center(
            //StatefullWidgetで定義したRandomWordsを表示
            child: RandomWords()),
      ),
    );
  }
}
