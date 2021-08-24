import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dog Name Voting",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  // map
  final dummyData = [
    {"name": "Corolla", "votes": 0},
    {"name": "Rav4", "votes": 0},
    {"name": "Supra", "votes": 0},
    {"name": "Harrier", "votes": 0},
    {"name": "Yaris", "votes": 0},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Popular Car Voting")),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return _buildList(dummyData);
  }

  Widget _buildList(List<Map<String, dynamic>> dataList) {
    return ListView.builder(
        padding: EdgeInsets.all(18.0),
        itemCount: dataList.length,
        itemBuilder: (context, i) {
          return _buildListItem(dataList[i]);
        });
  }

  Widget _buildListItem(Map<String, dynamic> data) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 9),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          title: Text(data["name"]),
          // trailing: ListTileの右側に表示
          trailing: Text(data["votes"].toString()),
          onTap: () {
            setState(() {
              data["votes"] += 1;
            });
          },
        ),
      ),
    );
  }
}
