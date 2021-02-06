import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSliderTest extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CupertinoSliderTestState();
  }

}

class CupertinoSliderTestState extends State<CupertinoSliderTest>{

  double _slideValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CupertinoSlider(
            value: _slideValue,
            onChanged: (value){
              setState(() {
                _slideValue = value;
              });
            }
        ),
      ),
    );
  }

}