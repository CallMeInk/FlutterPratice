import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoTimerPickerTest extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return CupertinoTimerPickerTestState();
  }

}

class CupertinoTimerPickerTestState extends State<CupertinoTimerPickerTest>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: CupertinoTimerPicker(
            onTimerDurationChanged: (Duration value) {
              print(value);
            },

          ),
        ),
      ),
    );
  }

}