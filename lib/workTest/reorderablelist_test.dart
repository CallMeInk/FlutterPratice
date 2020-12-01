import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//flutter 原生 可拖动排序的list
class ReOrderableListTest extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return ReOrderableListTestState();
  }

}

class ReOrderableListTestState extends State<ReOrderableListTest>{

  List<Color> _data = [
    Colors.blue,
    Colors.pinkAccent,
    Colors.deepPurple,
    Colors.orangeAccent
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ReorderableListView(
          header: Card(
              color: Color(0xFFFF0000),
              key: Key("header"),
              child: Container(
                width: 300,
                height: 100,
              ),
          ),
          children: _data
              .map((s) => Card(
            color: s,
            key: Key(s.toString()),
            child: Container(
              width: 300,
              height: 100,
            ),
          ))
              .toList(),
          onReorder: (int oldIndex, int newIndex){
            print("oldIndex: $oldIndex, newIndex: $newIndex");
            setState(() {
              if(oldIndex < newIndex) {
                newIndex -= 1;
              }

              var temp = _data.removeAt(oldIndex);
              _data.insert(newIndex, temp);
            });
          },
        ),
      )
    );
  }

}