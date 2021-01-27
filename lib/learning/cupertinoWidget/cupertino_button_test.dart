import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoButtonTest extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CupertinoButtonTestState();
  }

}

class CupertinoButtonTestState extends State<CupertinoButtonTest>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CupertinoButton(
          child: Text(
            "cupertino button"
          ),
          onPressed: (){
          },
        ),
      ),
    );
  }

}