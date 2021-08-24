/* Listview */

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

//StatelessWidgetでMaterialApp.RandomWords(動的Widget)を返り値で設定する
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ListView App",
      home: RandomWords(), //このメソッドをこの後定義
    );
  }
}

// createStateメソッドでRandomWordsState関数を呼び出す
class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

//Stateクラス
class RandomWordsState extends State<RandomWords> {
  // 変数に_(アンダーバー)をつけることでnon-public(外部からアクセス不可)とすることができる
  // ListViewのWidgetを作るメソッド
  Widget _buildSuggestions() {
    final _wordPairs = <WordPair>[]; //単語のペアを格納するリスト
    //itemBuilderで一行ごとに処理が呼ばれ、偶数行の場合にListTileを表示し、奇数行のときにDividerを表示
    return ListView.builder(itemBuilder: (context, i) {
      if (i.isOdd) return Divider(); //奇数行には水平線を表示

      final index = i ~/ 2; // Divider線を抜いた行数をカウントする
      //利用可能な英文リスト数をindexが超えた場合は,追加で10個の英文リストを生成
      if (index >= _wordPairs.length) {
        _wordPairs.addAll(generateWordPairs().take(10));
      }
      return _buildrow(_wordPairs[index]);
    });
  }

  //_buildSuggestionsのListView.builderの返り値である_buildrowを定義
  Widget _buildrow(WordPair pair) {
    return ListTile(
        title: Text(
      pair.asPascalCase,
    ));
  }

  // RandomWordsStateクラスのbuildメソッドを以下のように書き換え、_buildSuggestionsメソッドを呼び出すように変更
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listview sample App"),
      ),
      body: _buildSuggestions(),
    );
  }
}
