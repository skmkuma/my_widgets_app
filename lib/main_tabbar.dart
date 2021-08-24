/* TabBar */
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TabBar practice App',
      // TabBarPage関数をhomeに設定
      home: TabBarPage(),
    );
  }
}

class TabBarPage extends StatefulWidget {
  @override
  _TabBarPageState createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  // タブバーで表示するアイコンのリストを_tabに格納
  final _tab = <Tab>[
    Tab(text: "Railway", icon: Icon(Icons.directions_railway)),
    Tab(text: "Bus", icon: Icon(Icons.directions_bus)),
    Tab(text: "Bike", icon: Icon(Icons.directions_bike)),
  ];

  // TabBar,TabBarView, DefaultTabControllerを使い、タブバーとそれに連動するタブページを表示
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tab.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabBar App'),
          bottom: TabBar(tabs: _tab),
        ),
        body: TabBarView(
          children: <Widget>[
            TabPage(title: "Railway", icon: Icons.directions_railway),
            TabPage(title: "Bus", icon: Icons.directions_bus),
            TabPage(title: "Bike", icon: Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}

// TabPageの詳細を設定するクラス
class TabPage extends StatelessWidget {
  final IconData icon;
  final String title;

  // コンストラクタの作成(titleとiconを引数にして親クラスを継承)
  const TabPage({Key key, this.title, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Textに適応させるTextStyleをTheme(headline5)から持ってくる
    final TextStyle textStyle = Theme.of(context).textTheme.headline5;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 68,
          ),
          Text(title, style: textStyle),
        ],
      ),
    );
  }
}
