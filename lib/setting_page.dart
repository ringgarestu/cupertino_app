import 'package:flutter/cupertino.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Setting Page'),
      ),
      child: Center(
        child: CupertinoButton(
          child: Text('Log out'),
          onPressed: () {},
        ),
      ),
    );
  }
}
