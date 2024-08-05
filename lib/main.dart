import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_app/search_page.dart';
import 'package:cupertino_app/setting_page.dart';
import 'package:cupertino_app/feed_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: CupertinoThemeData(
        primaryColor: CupertinoColors.systemOrange,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.news),
            label: 'Feeds',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: 'Feeds',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings),
            label: 'Feeds',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return FeedPage();
          case 1:
            return SearchPage();
          case 2:
            return SettingPage();
          default:
            return Center(
              child: Text('Page not found!'),
            );
        }
      },
    );
  }
}
