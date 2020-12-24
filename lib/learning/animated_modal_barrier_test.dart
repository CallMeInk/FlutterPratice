import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedModalBarrierTest extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return AnimatedModalBarrierTestState();
  }

}

class AnimatedModalBarrierTestState extends State<AnimatedModalBarrierTest> with SingleTickerProviderStateMixin{

  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this
    );
    _animation = ColorTween(
      begin: Color(0xFFFF0000),
      end: Color(0xFF00FF00),
    ).animate(_animationController);
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: AnimatedModalBarrier(
            semanticsLabel: "StackBarrier",
            barrierSemanticsDismissible: true,
            dismissible: true,
            color: _animation,
          ),
        ),
      ),
    );
  }

}