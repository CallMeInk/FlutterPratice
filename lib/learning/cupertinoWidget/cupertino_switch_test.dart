import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSwitchTest extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CupertinoSwitchTestState();
  }

}

class CupertinoSwitchTestState extends State<CupertinoSwitchTest>{

  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: CupertinoSwitch(
            value: _value,
            onChanged: (value){
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