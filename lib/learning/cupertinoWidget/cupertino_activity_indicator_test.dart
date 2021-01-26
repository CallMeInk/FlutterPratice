import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoActivityIndicatorTest extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CupertinoActivityIndicatorTestState();
  }

}

class CupertinoActivityIndicatorTestState extends State<CupertinoActivityIndicatorTest>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CupertinoActivityIndicator(
          radius: 100,
        ),
      ),
    );
  }

}