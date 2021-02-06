import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSegmentedControlTest extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return CupertinoSegmentedControlTestState();
  }

}

class CupertinoSegmentedControlTestState extends State<CupertinoSegmentedControlTest>{

  String _value = "语文";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CupertinoSegmentedControl(
          children: {
            "语文" : Container(child: Text("语文"),),
            "数学" : Container(child: Text("数学"),),
            "体育" : Container(child: Text("体育"),),
          },
          groupValue: _value,
          onValueChanged: (value){
            setState(() {
              _value = value;
            });
          },
          unselectedColor: Color(0xFF00FF00),
          selectedColor: Color(0xFF0000FF),
          pressedColor: Color(0xFFFF0000),
          borderColor: Color(0xFFFF0000),
        ),
      ),
    );
  }

}