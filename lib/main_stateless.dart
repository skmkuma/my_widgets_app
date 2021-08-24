/* Hello World */

// マテリアルデザインのUIがまとめられたパッケージをインストール
// マテリアルデザインについて⇨https://api.flutter.dev/
import 'package:flutter/material.dart';

// runApp:引数のWidgetが全画面表示される
void main() => runApp(MyApp());
// ↓この書き方でも可
// void main() {
//   runApp(MyApp());
// }

// 最初に表示するWidgetのクラス(StatelessWidgetを継承)
class MyApp extends StatelessWidget {
  @override //親クラスのビルドメソッドを上書き(BuildメソッドでUIを作成)
  Widget build(BuildContext context) {
    //マテリアルデザインのアプリを返り値に設定
    return MaterialApp(
      title: "My Widget App", // アプリのタイトル
      home: Scaffold(
        //マテリアルデザインの土台
        appBar: AppBar(
          title: Text("Hello Widget♡"),
        ),
        body: Center(
          child: Text("Hello World!"),
        ),
      ),
    );
  }
}
