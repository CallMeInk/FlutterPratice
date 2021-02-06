import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSlidingSegmentedControlTest extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CupertinoSlidingSegmentedControlTestState();
  }

}

class CupertinoSlidingSegmentedControlTestState extends State<CupertinoSlidingSegmentedControlTest>{

  String _value = "语文";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: CupertinoSlidingSegmentedControl(
            children: {
              '语文':Container(child: Text('语文'), padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),),
              '数学':Container(child: Text('数学'), padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),),
              '体育':Container(child: Text('体育'), padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),)
            },
            groupValue: _value,
            onValueChanged: (value){
              setState(() {
                _value = value;
              });
            },
          ),
        ),
      ),
    );
  }

}