/* SliverAppBarBar */

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BottomNavigationBar',
      // theme: ThemeData.light(),
      theme: ThemeData(primarySwatch: Colors.pink),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SliverAppBar'),
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            const SliverAppBar(
              floating: true, // リストの頭でなくても、上に酢ロールするとヘッダーを表示
              pinned: true, //ヘッダーを非表示にせず、タイトルの1行分を残した状態で表示
              snap: true, //ヘッダーがスクロールにより中途半端に表示されなくなり、一気に最大表示される
              expandedHeight: 250.0,
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Demo'),
              ),
            ),
            SliverFixedExtentList(
              itemExtent: 150.0,
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.lightBlue[200 * (index % 5)],
                    child: Text(
                      'list item $index',
                      style: TextStyle(fontSize: 30),
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
