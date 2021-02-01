import 'package:flutter/cupertino.dart';

class CupertinoPageScaffoldTest extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CupertinoPageScaffoldTestState();
  }

}

class CupertinoPageScaffoldTestState extends State<CupertinoPageScaffoldTest>{

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Text("123"),
      )
    );
  }

}