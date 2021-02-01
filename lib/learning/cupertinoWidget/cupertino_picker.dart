import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPickerTest extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return CupertinoPickerTestState();
  }

}

class CupertinoPickerTestState extends State<CupertinoPickerTest>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CupertinoPicker(
          itemExtent: 50,
          onSelectedItemChanged: (index){

          },
          children: [
            Container(color: Colors.primaries[1],),
            Container(color: Colors.primaries[2],),
            Container(color: Colors.primaries[3],),
            Container(color: Colors.primaries[4],),
            Container(color: Colors.primaries[5],),
            Container(color: Colors.primaries[6],),
          ],
        ),
      ),
    );
  }

}