/* bottom_navifationbar_transition2 */
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'BottomNavigation_Transition';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  PageController _pageController;

  static List<Widget> _pageList = [
    CustomPage(pannelColor: Colors.cyan, title: "home"),
    CustomPage(pannelColor: Colors.orange, title: "Settings"),
    CustomPage(pannelColor: Colors.pink, title: "Album"),
    CustomPage(pannelColor: Colors.green, title: "Search"),
  ];

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: _selectedIndex,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("BottomNavigation_Transition"), centerTitle: true),
        body: PageView(
          controller: _pageController,
          onPageChanged: _onPageChanged,
          children: _pageList,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("home")),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), title: Text("Setting")),
            BottomNavigationBarItem(
                icon: Icon(Icons.photo_album), title: Text("Album")),
            BottomNavigationBarItem(
                icon: Icon(Icons.search), title: Text("Search")),
          ],
          currentIndex: _selectedIndex,
          // デフォルトでshiftingタイプが設定されてしまうため、fixedタプを指定
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            _selectedIndex = index;
            _pageController.animateToPage(index,
                duration: Duration(milliseconds: 200),
                curve: Curves.easeInExpo);
          },
        ));
  }
}

class CustomPage extends StatelessWidget {
  final Color pannelColor;
  final String title;
  // 引数必須の場合、@requiredアノテーションを付与する
  CustomPage({@required this.pannelColor, @required this.title});

  @override
  Widget build(BuildContext context) {
    final titleTextStyle = Theme.of(context).textTheme.title;
    return Center(
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: pannelColor,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Center(
          child: Text(title,
              style: TextStyle(
                fontSize: titleTextStyle.fontSize,
                color: titleTextStyle.color,
              )),
        ),
      ),
    );
  }
}
