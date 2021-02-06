import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoTabBarTest extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return CupertinoTabBarTestState();
  }

}

class CupertinoTabBarTestState extends State<CupertinoTabBarTest>{
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('tab1')),
            BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('tab2')),
          ],
        ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          defaultTitle: 'default title',
          builder: (context){
            return Center(
              child: Text('$index'),
            );
          },
        );
      },
    );
  }

}