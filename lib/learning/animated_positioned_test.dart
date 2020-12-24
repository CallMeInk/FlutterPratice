import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedPositionedTest extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return AnimatedPositionedTestState();
  }

}

class AnimatedPositionedTestState extends State<AnimatedPositionedTest>{

  var _top = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
                children: [
                  AnimatedPositioned(
                      top: _top,
                      child: Container(
                        width: 50,
                        height: 50,
                        color: Color(0xFFFF0000),
                      ),
                      duration: Duration(seconds: 2)
                  ),
                ],
              )
          ),
          RaisedButton(
            onPressed: (){
              setState(() {
                _top = 180 - _top;
              });
            },
          ),
        ],
      ),
    );
  }

}