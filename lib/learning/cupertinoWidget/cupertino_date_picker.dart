import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoDatePickerTest extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return CupertinoDatePickerTestState();
  }

}

class CupertinoDatePickerTestState extends State<CupertinoDatePickerTest>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CupertinoDatePicker(
          initialDateTime: DateTime.now(),
          onDateTimeChanged: (date){

          },
          mode: CupertinoDatePickerMode.dateAndTime,
          // minimumDate: DateTime.now(),
          use24hFormat: true,
        ),
      ),
    );
  }

}