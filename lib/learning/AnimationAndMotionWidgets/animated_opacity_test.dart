import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedOpacityTest extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return AnimatedOpacityTestState();
  }

}

class AnimatedOpacityTestState extends State<AnimatedOpacityTest>{

  double _opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AnimatedOpacity(
            duration: Duration(seconds: 1),
            opacity: _opacity,
            child: Container(
              width: 200,
              height: 200,
              color: Color(0xFFFF0000),
            ),
          ),
          GestureDetector(
            onTap: (){
              setState(() {
                _opacity = 1 - _opacity;
              });
            },
            child: Text(
              "change opacity"
            ),
          )
        ],
      ),
    );
  }

}