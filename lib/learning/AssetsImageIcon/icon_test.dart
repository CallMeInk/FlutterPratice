import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconTest extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return IconTestState();
  }

}

class IconTestState extends State<IconTest>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Icon(
        Icons.add,
        size: 50,
      ),
    );
  }

}