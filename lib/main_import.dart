/* 外部パッケージの導入 */

import 'package:flutter/material.dart';
// 外部パッケージをimport&pubspec.yamlファイルに追加&flutter packages getを実行
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random(); //ランダムの英単語のペア
    return MaterialApp(
      title: "My import App",
      home: Scaffold(
        appBar: AppBar(
          title: Text('My import App'),
        ),
        body: Center(
          child: Text(wordPair.asPascalCase), //UpperCamelCase
        ),
      ),
    );
  }
}
