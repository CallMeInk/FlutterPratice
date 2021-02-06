import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoTextFieldTest extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CupertinoTextFieldTestState();
  }

}

class CupertinoTextFieldTestState extends State<CupertinoTextFieldTest>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: CupertinoTextField(

          ),
        ),
      ),
    );
  }

}