import 'package:flutter/material.dart';
import 'tabs/CategoryPage.dart';
import 'tabs/HomePage.dart';
import 'tabs/SettingPage.dart';

class HomeDemo extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomeDemo> {
  int _countNum = 0;
  List pageList = [
    HomePage(),
    CategoryPage(),
    SettingPage(),
    SettingPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('頁面返回跳轉功能'),
      ),
      body: this.pageList[this._countNum],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: this._countNum,
        onTap: (int index){
          setState(() {
            this._countNum = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("首頁"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text("類別"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text("設定"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("搜尋"),
          ),
        ],
      ),

    );
  }
}
