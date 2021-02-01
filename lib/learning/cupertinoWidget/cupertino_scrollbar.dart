import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoScrollbarTest extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return CupertinoScrollbarTestState();
  }

}

class CupertinoScrollbarTestState extends State<CupertinoScrollbarTest>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Scrollbar(
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Text('Item$index');
            },
            itemExtent: 50,
            itemCount: 50,
          ),
        ),
      ),
    );
  }

}