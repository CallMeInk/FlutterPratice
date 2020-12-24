import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedSizeTest extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return AnimatedSizeTestState();
  }

}

class AnimatedSizeTestState extends State<AnimatedSizeTest> with SingleTickerProviderStateMixin{

  double _size = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => _updateSize(),
        child: Container(
          child: AnimatedSize(
            duration: Duration(seconds: 2),
            vsync: this,
            child: FlutterLogo(
              size: _size,
            ),
          ),
        ),
      ),
    );
  }

  _updateSize(){
    setState(() {
      _size = 200 - _size;
    });
  }

}