import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoNavigationBarTest extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CupertinoNavigationBarTestState();
  }

}

class CupertinoNavigationBarTestState extends State<CupertinoNavigationBarTest>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CupertinoNavigationBar(
          middle: Text(
            "middle"
          ),
          leading: Icon(Icons.arrow_back),
        ),
      ),
    );
  }



}